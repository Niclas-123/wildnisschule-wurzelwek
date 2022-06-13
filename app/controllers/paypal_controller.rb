class PaypalController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_booking, only: %i[create_order capture_order]
  before_action :paypal_init, only: %i[create_order capture_order]

  def create_order
    require "uri_helper"
    request = PayPalCheckoutSdk::Orders::OrdersCreateRequest::new
    request.request_body({
      :intent => 'CAPTURE',
      :purchase_units => [
        {
          :amount => {
            :currency_code => 'USD',
            :value => '1.00'
          }
        }
      ]
    })

    begin
      response = @client.execute request
      @booking.token = response.result.id
      if @booking.save
        return render :json => {:token => response.result.id}, :status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      flash.now[:alert] = "Ups, da ist etwas schief gelaufen :/"
    end
  end

  def capture_order
    request = PayPalCheckoutSdk::Orders::OrdersCaptureRequest::new params[:booking_id]

    begin
      response = @client.execute request
      @booking = Booking.find(params[:booking_id])
      @booking.status = 'paid' if response.result.status == "COMPLETED"
      if @booking.save
        flash.now[:notice] = "Deine Buchung wurde erfolgreich bestätigt! :)"
        return render :json => {:status => response.result.status}, :status => :ok
      end
    rescue PayPalHttp::HttpError => ioe
      flash.now[:alert] = "Ups, da ist etwas schief gelaufen :/"
    end
  end

private

  def set_booking
    @booking = Booking.find(params[:booking_id])
    @seminar = @booking.seminar
    @seminar_instance = @seminar.seminar_instance
    @seminar_type = @seminar_instance.seminar_type
  end

  def paypal_init
    client_id = Rails.application.credentials[:paypal_client_id]
    client_secret = Rails.application.credentials[:paypal_client_secret]
    environment = PayPal::SandboxEnvironment.new client_id, client_secret
    @client = PayPal::PayPalHttpClient.new environment
  end

end
