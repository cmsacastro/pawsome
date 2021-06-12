class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.where(sender: current_user).or(Conversation.where(recipient: current_user))
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    @messages = @conversation.messages
    # & is a safe operator. Only call last if last exists. Use in external APIs normally
    @messages&.last&.update(read: true)
  end

  def new
    @conversation = Conversation.new
  end

  def create
    # TODO: refactor this (remove the 'if')
    sender_id = current_user.id
    if Conversation.between(sender_id, params[:conversation][:recipient_id]).present?
      @conversation = Conversation.between(sender_id, params[:conversation][:recipient_id]).first
    else
      @conversation = Conversation.new(conversation_params)
      @conversation.sender = current_user
      @conversation.save
    end
    # This used to be conversations_path
    redirect_to conversation_path(@conversation)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:recipient_id)
  end
end
