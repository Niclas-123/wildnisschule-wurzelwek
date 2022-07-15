module Admin
  class BookingsController < Admin::BaseController

    before_action :set_booking

    def update
      if @booking.update(booking_params)
        flash[:notice] = "Du hast die Buchung erfolgreich editiert :)"
        redirect_to admin_seminar_type_seminar_instance_seminar_path(@booking.seminar.seminar_instance.seminar_type.id, @booking.seminar.seminar_instance.id, @booking.seminar.id)
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        redirect_to admin_seminar_type_seminar_instance_seminar_path(@booking.seminar.seminar_instance.seminar_type.id, @booking.seminar.seminar_instance.id, @booking.seminar.id)
      end
    end

  private

    def set_booking
    @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:status)
    end

  end
end
