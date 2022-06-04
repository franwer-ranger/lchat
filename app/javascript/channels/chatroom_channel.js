import Turbolinks from "turbolinks"
import consumer from "./consumer"

document.addEventListener('turbolinks:load', () => {
  const chatroomId = document.getElementById('message-list').getAttribute('data-chatroom-id')

  consumer.subscriptions.subscriptions.forEach((subscription) => {
    consumer.subscriptions.remove(subscription)
  })

  consumer.subscriptions.create({channel: "ChatroomChannel", chatroom_id: chatroomId}, {
    connected() {
      console.log("connected.....", chatroomId)
    },
  
    disconnected() {
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      const input = document.getElementById('message_body')
      const form = document.getElementById('new_message')
      form.reset()
      input.value = ""


      const element = document.getElementById("message-list")
      const userId = Number(element.dataset.userId)
  
      let html
  
      if (userId === data.message.user_id) {
        html = data.mine
      } else {
        html = data.theirs
      }
  
      element.innerHTML = element.innerHTML + html
      element.scrollTop = element.scrollHeight;
      setTimeout(Turbolinks.visit(), 1000)
    }
  });  
})