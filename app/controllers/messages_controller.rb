class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(
        @conversation,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to conversation_path(@conversation, anchor: "message-#{@message.id}")
    else
      render "conversations/show"
    end
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
