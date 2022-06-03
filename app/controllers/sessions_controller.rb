class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      flash[:notice] = 'Hi Mama :)'
      redirect_to user_path(current_user)
    else
      flash.now[:notice] = 'Die Log-in Daten waren leider falsch.'
      render 'new'
    end
  end

  def destroy
    logout
    flash[:notice] = 'See you!'
    redirect_to root_path
  end
end
