module Frontend
  class BookingsController < ApplicationController
    load_and_authorize_resource

    before_action :set_booking, only: %i[confirmation success]
    before_action :set_seminar, only: %i[new create account_abfrage confirmation]
    before_action :set_seminar_instance, only: %i[new create account_abfrage confirmation]
    before_action :set_seminar_type, only: %i[new create account_abfrage confirmation]

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new(booking_params)
      if @booking.save
        redirect_to frontend_seminar_type_seminar_instance_seminar_booking_confirmation_path(@seminar_type, @seminar_instance, @seminar, @booking), notice: "Bitte bestätige deine Buchung! :)"
      else
        render :new, status: :unprocessible_entity
      end
    end

    def account_abfrage
      if current_user
        redirect_to new_frontend_seminar_type_seminar_instance_seminar_booking_path(@seminar_type, @seminar_instance, @seminar)
      end
    end

    def confirmation
      if @booking.status != 'pending' || @booking.created_at < 10.minutes.ago..DateTime.now
        flash[:alert] = "Deine Sitzung ist abgelaufen."
        redirect_to root_path
      end
    end

    def success
      if @booking.status != 'transfer'
        @booking.update!(status: 'transfer')
        BookingMailer.with(booking: @booking).booking_email_admin.deliver_now
        BookingMailer.with(booking: @booking).booking_email_customer.deliver_now
      end
    end

  private

    def set_booking
      @booking = Booking.find(params[:booking_id])
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
      set_seminar_instance
      params.require(:booking).permit(:last_name, :first_name, :birth_year, :adress, :zip_code, :email, :tel, :city, :rideshare, :agb, :privacy, :payment_gateway, :token, :charge_id).merge(seminar: @seminar, price_cents: @seminar_instance.price_cents)
    end

  end
end
