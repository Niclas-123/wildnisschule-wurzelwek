class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      if current_user.admin
        redirect_to admin_user_path(current_user)
      else
        if params.has_key?(:seminar)
          flash[:notice] = 'Hi ' + current_user.first_name + ' :)'
          set_seminar_for_booking
          redirect_to new_frontend_seminar_type_seminar_instance_seminar_booking_path(@seminar_type, @seminar_instance, @seminar)
        else
          flash[:notice] = 'Hi ' + current_user.first_name + ' :)'
          redirect_to frontend_user_path(current_user)
        end
      end
    else
      flash.now[:alert] = 'Die Log-in Daten waren leider falsch.'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    logout
    flash[:notice] = 'Bis bald!'
    redirect_to root_path
  end

private

  def set_seminar_for_booking
    @seminar = Seminar.find(params[:seminar])
    @seminar_instance = @seminar.seminar_instance
    @seminar_type = @seminar_instance.seminar_type
  end
end
