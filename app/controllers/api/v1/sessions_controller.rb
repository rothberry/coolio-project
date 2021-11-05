class Api::V1::SessionsController < ApplicationController

  def me
    if session[:user_id]
      user = Api::V1::User.find_by(id: session[:user_id])
      render json: user
    else
      render json: {error: "Not Logged In"}, status: 404
    end
  end

  def login
    user = Api::V1::User.find_by(username: params[:username])
    if !!user && user.authenticate(params[:password])
      render json: user
    else
      render json: {error: "User Not Found"}, status: 404
    end
  end

  def logout
    session.delete :user_id
    # session.clear
    head :no_content
  end

end
