module Admin
  class SeminarsController < ApplicationController
    before_action :set_seminar_instance, only: %i[send_mail]
    before_action :set_seminar_type, only: %i[send_mail]
    before_action :set_seminar, only: %i[send_mail]

    def send_mail
      @riders = @seminar.bookings.where(rideshare: true)
      @emails = @riders.pluck(:email)
      RideshareMailer.with(riders: @riders, seminar: @seminar, emails: @emails).rideshare_mail.deliver_now
      flash[:notice] = "Die E-mail wurde erfolgreich verschickt!"
      redirect_to user_path(current_user)
    end

  private

  def set_seminar_instance
    @seminar_instance = SeminarInstance.friendly.find(params[:seminar_instance_id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.friendly.find(params[:seminar_type_id])
  end

  def set_seminar
    @seminar = Seminar.friendly.find(params[:seminar_id])
  end

  end
end
