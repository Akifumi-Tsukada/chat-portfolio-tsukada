class MessagesController < ApplicationController
  def new
    @messages = Message.all
    @message = Message.new
    @users = User.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    end
  end

  def destroy_all
    Message.destroy_all
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:text).merge(user_id: current_user.id)
  end

end