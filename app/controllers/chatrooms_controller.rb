class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  # TODO: Chatroom create path, which checks if a chatroom exists between these users
end
