class ChatRoomsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def new
    @chat_room = ChatRoom.new
  end

  def create
    @chat_room = ChatRoom.new(ChatRoom_params)
    if @chat_room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def ChatRoom_params
    params.require(:chat_room).permit(:room_name, :discription, :language_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
