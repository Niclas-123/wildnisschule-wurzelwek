class BookingsController < ApplicationController
  load_and_authorize_resource

  before_action :set_booking, only: %i[]
  before_action :set_seminar, only: %i[new create account_abfrage]
  before_action :set_seminar_instance, only: %i[new create account_abfrage]
  before_action :set_seminar_type, only: %i[new create account_abfrage]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to root_path, notice: "Du hast dein Seminar erfolgreich gebucht! :)"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def account_abfrage
    if current_user
      redirect_to new_seminar_type_seminar_instance_seminar_booking_path(@seminar_type, @seminar_instance, @seminar)
    end
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_seminar
    @seminar = Seminar.friendly.find(params[:seminar_id])
  end

  def set_seminar_instance
    @seminar_instance = SeminarInstance.friendly.find(params[:seminar_instance_id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.friendly.find(params[:seminar_type_id])
  end

  def booking_params
    params.require(:booking).permit(:last_name, :first_name, :birthday, :street, :zip_code, :email, :tel).merge(seminar: @seminar)
  end

end

