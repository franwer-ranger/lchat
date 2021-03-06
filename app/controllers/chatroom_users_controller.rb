class ChatroomUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom

  def create
    @chatroom_user = ChatroomUser.where(user: current_user, chatroom: @chatroom).first_or_create
    redirect_to chatroom_path(@chatroom)
  end

  def destroy
    @chatroom_user = ChatroomUser.where(user: current_user, chatroom: @chatroom).destroy_all
    redirect_to chatrooms_path
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end
end