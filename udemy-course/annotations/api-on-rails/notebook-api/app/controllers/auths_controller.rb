class AuthsController < ApplicationController
  hmac_secret = 'my$ecretK3y'

  def create
    payload = {name: params[:name]}
    token = JWT.encode payload, hmac_secret, 'HS256'
    render json: { token: token }
  end
end
