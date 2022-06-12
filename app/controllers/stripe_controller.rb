class StripeController < ApplicationController
  before_action :set_booking, only: %i[create sucess]
  before_action :set_session, only: %i[sucess]

  def create
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        name: @booking.seminar.seminar_instance.name,
        amount: @booking.price_cents,
        currency: "eur",
        quantity: 1,
        # customer_email: @booking.email
      }],
      mode: 'payment',
      success_url: seminar_type_seminar_instance_seminar_booking_stripe_sucess_url(@seminar_type, @seminar_instance, @seminar) + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url: seminar_type_seminar_instance_seminar_booking_stripe_failure_url(@seminar_type, @seminar_instance, @seminar) + "?session_id={CHECKOUT_SESSION_ID}",
    })
    redirect_to @session.url, allow_other_host: true
  end

  def sucess
    if @session.payment_status = 'paid'
      @booking.set_paid
      @booking.update(customer_id: @session.customer)
    end
  end

private

  def set_booking
    @booking = Booking.find(params[:booking_id])
    @seminar = @booking.seminar
    @seminar_instance = @seminar.seminar_instance
    @seminar_type = @seminar_instance.seminar_type
  end

  def set_session
    @session = Stripe::Checkout::Session.retrieve(params[:session_id])
  end

end
