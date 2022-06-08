class RideshareMailer < ApplicationMailer
  def rideshare_mail
    @riders = params[:riders]
    @seminar = params[:seminar]
    @emails = params[:emails]
    mail(subject: "Mitfahrgelegenheiten für das Seminar: #{@seminar.seminar_instance.name}", to: @emails, from: "wildnisschule@wurzelholz.de")
  end
end
