class BookingsController < ApplicationController
  before_action :set_booking, only: %i[]
  before_action :set_seminar, only: %i[new create]
  before_action :set_seminar_instance, only: %i[new create]
  before_action :set_seminar_type, only: %i[new create]

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



private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_seminar
    @seminar = Seminar.find(params[:seminar_id])
  end

  def set_seminar_instance
    @seminar_instance = SeminarInstance.find(params[:seminar_instance_id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.find(params[:seminar_type_id])
  end

  def booking_params
    params.require(:booking).permit(:last_name, :first_name, :birthday, :street, :zip_code, :email, :tel).merge(seminar: @seminar)
  end

end

