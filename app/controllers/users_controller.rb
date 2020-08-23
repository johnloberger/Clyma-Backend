class UsersController < ApplicationController

  def show
  end
  
  def create
    user = User.create(email: params[:email], username: params[:username], password: params[:password])
    render json: user
  end

  def index
    users = User.all 
    render json: users
  end


end
