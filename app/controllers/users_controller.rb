class UsersController < ApplicationController
  
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
