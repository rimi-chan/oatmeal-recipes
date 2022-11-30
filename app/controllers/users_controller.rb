class UsersController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  
  def show
    @user = current_user
    @user = User.find_by(id:params[:id])
    @oats = @user.oats.page(params[:page]).page(params[:page]).per(8)
    @powders = @user.powders.page(params[:page]).page(params[:page]).per(8)
  end
  
  def edit
    @user = User.find_by(id:params[:id])
  end

  def update
    @user = User.find_by(id:params[:id])
    if @user.update(params.require(:user).permit(:username, :user_image_id, :profile_image_id, :profile))
      flash[:notice] = "updated your profile"
      redirect_to user_path
    else
      render "edit"
    end
  end
  
end
