class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.find_or_create_by(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
