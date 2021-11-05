class Api::V1::UsersController < ApplicationController

  User = Api::V1::User

  def index
    render json: User.all
  end

  def signup
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user
    else
      render json: {error: user.errors.full_messages }, status: 401
    end
  end

  # def show
  #   user = User.find_by(id: params[:id])
  #   render json: user, include: [:id, :username]
  # end

  private

  def user_params
    params.permit(:username, :password )
  end
end
