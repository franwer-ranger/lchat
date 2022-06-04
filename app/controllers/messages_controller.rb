class MessagesController < ApplicationController
  include CableReady::Broadcaster

  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    @message = Message.create(message_params.merge(user: current_user, chatroom: @chatroom))
    SendMessageJob.perform_later(@message)
  end

  private 

  def set_chatroom
    @chatroom = Chatroom.find params[:chatroom_id]
  end

  def message_params
    params.require(:message).permit(:body)
  end
end