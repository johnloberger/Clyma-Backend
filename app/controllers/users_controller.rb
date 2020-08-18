class UsersController < ApplicationController

  def show
  end
  
  def index
    users = User.all 
    render json: users
  end

end
