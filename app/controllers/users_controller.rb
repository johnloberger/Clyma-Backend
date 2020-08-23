class UsersController < ApplicationController

  def show
  end
  
  def create
    user = User.create(user_params)
      if user.valid?
        token = encode_token(user_id: user.id)
        render json: user
      else 
        render json: { error: 'failed to create user'}, status: :not_acceptable
    end
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
