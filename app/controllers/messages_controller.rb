class MessagesController < ApplicationController
  include CableReady::Broadcaster

  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    message = Message.create(message_params.merge(user: current_user, chatroom: @chatroom))
    cable_ready["message"].insert_adjacent_html(
      selector: "#message-list",
      position: "beforeend",
      html: render_to_string(partial: "chatrooms/message", locals: { message: message })
    )
    cable_ready.broadcast
    #redirect_to chatroom_path(@chatroom)
  end

  private 

  def set_chatroom
    @chatroom = Chatroom.find params[:chatroom_id]
  end

  def message_params
    params.require(:message).permit(:body)
  end
end