class StripeController < ApplicationController
  before_action :set_booking, only: %i[create]

  def create
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        name: @booking.seminar.seminar_instance.name,
        amount: @booking.price_cents,
        currency: "eur",
        quantity: 1
      }],
      mode: 'payment',
      success_url: root_url,
      cancel_url: root_url,
    })
    redirect_to @session.url, allow_other_host: true
  end

private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

end
