class Api::V1::MessagesController < Api::V1::ApiController


  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    authorization_object = Authorization.new(request)
    current_user = authorization_object.current_user


    @messages = @conversation.messages

    @messages.where("user_id != ? AND read = ?", current_user, false).update_all(read: true)

    @message = @conversation.messages.new
  end
  def create
    before_action :authenticate_user!

    @message = @conversation.messages.new(message_params)

    authorization_object = Authorization.new(request)
    current_user = authorization_object.current_user

    @message.user = current_user

    if @message.save
      render json: @article, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  private

  def message_params
    authorization_object = Authorization.new(request)
    current_user = authorization_object.current_user

    params.require(:message).permit(:body, :user_id).merge(user_id: current_user)
  end
end