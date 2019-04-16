class Api::V1::ConversationsController < Api::V1::ApiController


  def index
    before_action :authenticate_user!

    @users = User.where.not(id: current_user.id)
    @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)

    render json: @conversations
  end

  def create
    before_action :authenticate_user!
    
    if Conversation.between(params[:sender_id], params[:receiver_id], params[:article_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:receiver_id], params[:article_id]).first

      render json: @conversation
    else
      @conversation = Conversation.create!(conversation_params)
      render json: @conversation, status: :create
    end

    redirect_to account_conversation_messages_path(@conversation)
  end

  private
  def conversation_params
    params.permit(:sender_id, :receiver_id, :article_id)
  end

end