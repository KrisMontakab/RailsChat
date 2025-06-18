class RoomsController < ApplicationController

#Only logged in users can access the list of rooms
before_action :authenticate_user!

  def index
    #Allows a list of rooms to be shown
    @rooms = Room.all
  end

  def show
    #Sets the room to match the id
  @room = Room.find(params[:id])

  #Shows the messages alongside the user
  @messages = @room.messages.includes(:user)

  #Empty message so the user can type their own
  @message = Message.new
  end
end
