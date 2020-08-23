class UsersController < ApplicationController

  def show
  end
  
  def create
    user = User.create(user_params)
    render json: user
  end

  def index
    users = User.all 
    render json: users
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password)
  end

end
