class Api::V1::ApiController < ActionController::API

  #protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  #
  include ExceptionHandler

end
