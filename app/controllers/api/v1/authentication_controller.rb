class Api::V1::AuthenticationController < Api::V1::ApiController

  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])
    if @user
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: {token: token,
                    exp: Time.parse(time.to_s).utc,
                    username: @user.email}, status: :ok
    else
      render json: {error: 'unauthorized'}, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end