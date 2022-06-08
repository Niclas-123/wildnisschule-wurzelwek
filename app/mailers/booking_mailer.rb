class BookingMailer < ApplicationMailer
  def booking_email_admin
    @booking = params[:booking];
    mail(subject: "Neue Buchung für #{@booking.seminar.seminar_instance.name}", to: "inescollmer@web.de", from: @booking.email)
  end

  def booking_email_customer
    @booking = params[:booking];
    mail(subject: "Buchungsbestätigung", to: @booking.email, from: 'wildnisschule@wurzelwerk.de')
  end
end
