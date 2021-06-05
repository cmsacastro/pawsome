class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.where(sender: current_user).or(Conversation.where(recipient: current_user))
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
    @messages = @conversation.messages
  end

  def new
    @conversation = Conversation.new
  end

  def create
    if Conversation.between(params[:sender_id], params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.new(conversation_params)
      # don't we need to declare the recipient as well??
      @conversation.sender = current_user
      @conversation.save
    end
    redirect_to conversation_path(@conversation)
  end

  private

  def conversation_params
    params.require(:conversation).permit(:recipient_id)
  end
end
