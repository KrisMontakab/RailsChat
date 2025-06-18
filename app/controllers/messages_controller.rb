class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
  #Room.find finding what room the message is going to be posted in
    @room = Room.find(params[:room_id])
    
    #Creates the message based on what was written
    @message = @room.messages.build(message_params)

    #Sets the user to who wrote the message 
    @message.user = current_user


    #Backup Version - This one worked pre adding Turbo stream!
# if @message.save
#   redirect_to room_path(@room)
# end


    if @message.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to room_path(@room) }
      end
    else
      render "rooms/show", status: :unprocessable_entity
    end


  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end