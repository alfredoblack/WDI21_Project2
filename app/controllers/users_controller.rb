class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @event = Event.find(params[:id])
  end

  def location_params
    params.require(:user).permit(:username, :profile_image)
  end
end
