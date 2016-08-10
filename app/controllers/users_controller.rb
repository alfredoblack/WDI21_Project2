class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])

  end

  def user_params
    params.require(:user).permit(:username, :profile_image, :created_events)
  end
end
