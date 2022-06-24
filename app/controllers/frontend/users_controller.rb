module Frontend
  class UsersController < ApplicationController
    load_and_authorize_resource

    before_action :set_user, only: [:show, :edit, :update]
    before_action :require_login, only: [:show, :edit, :update]


    def show
      if current_user.admin?
        redirect_to admin_user_path(current_user)
      else
        @seminars = Seminar.includes(:bookings).where(bookings: {email: current_user.email})
      end
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        login(params[:user][:email], params[:user][:password])
        if params.has_key?(:seminar)
          flash[:notice] = 'Willkommen ' + @user.first_name + ' :)'
          set_seminar_for_booking
          redirect_to new_frontend_seminar_type_seminar_instance_seminar_booking_path(@seminar_type, @seminar_instance, @seminar)
        else
          flash[:notice] = 'Wilkommen ' + @user.first_name + ' :)'
          redirect_to root_path
        end
      else
        render 'new', status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @user.update(user_params)
        flash[:notice] = "Du hast deinen Account erfolgreich editiert"
        redirect_to frontend_user_path(@user)
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render 'edit'
      end
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :birth_year, :zip_code, :adress, :tel, :city)
    end

    def set_seminar_for_booking
      @seminar = Seminar.find(params[:seminar])
      @seminar_instance = @seminar.seminar_instance
      @seminar_type = @seminar_instance.seminar_type
    end
  end
end
