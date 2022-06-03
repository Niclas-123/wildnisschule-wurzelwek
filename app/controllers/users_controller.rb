class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :require_login, only: [:show, :edit, :update]


  def show
    @seminars = Seminar.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to @user
    else
      render 'edit'
    end
end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end
end
