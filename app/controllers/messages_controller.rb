class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    @message = Message.new(message_params.merge(user: current_user, chatroom: @chatroom))
    @message.save
    redirect_to chatroom_path(@chatroom)
  end

  private 

  def set_chatroom
    @chatroom = Chatroom.find params[:chatroom_id]
  end

  def message_params
    params.require(:message).permit(:body)
  end
end