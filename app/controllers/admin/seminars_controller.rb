module Admin
  class SeminarsController < Admin::BaseController
    before_action :set_seminar_instance, only: %i[send_mail new create edit update]
    before_action :set_seminar_type, only: %i[send_mail new create edit update]
    before_action :set_seminar, only: %i[send_mail edit update show]

    def show
      @bookings = Booking.where(seminar: @seminar)
    end

    def new
      @seminar = Seminar.new
    end

    def create
      @seminar = Seminar.new(seminar_params)
      if @seminar.save
        flash[:notice] = "Du hast Erfolgreich einen neuen Termin erstell!"
        redirect_to admin_seminar_type_seminar_instance_path(params[:seminar_type_id], params[:seminar_instance_id])
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @seminar.update(seminar_params)
        flash[:notice] = "Du hast den Termin erfolgreich editiert :)"
        redirect_to admin_seminar_type_seminar_instance_path(params[:seminar_type_id], params[:seminar_instance_id])
      else
        flash[:alert] = "Da ist leider etwas schief gelaufen :/"
        render :edit, status: :unprocessable_entity
      end
    end

    def send_mail
      @riders = @seminar.bookings.where(rideshare: true)
      @emails = @riders.pluck(:email)
      RideshareMailer.with(riders: @riders, seminar: @seminar, emails: @emails).rideshare_mail.deliver_now
      flash[:notice] = "Die E-mail wurde erfolgreich verschickt!"
      redirect_to admin_user_path(current_user)
    end

  private

    def set_seminar_instance
      @seminar_instance = SeminarInstance.find(params[:seminar_instance_id])
    end

    def set_seminar_type
      @seminar_type = SeminarType.find(params[:seminar_type_id])
    end

    def set_seminar
      if params[:seminar_id]
        @seminar = Seminar.find(params[:seminar_id])
      else
        @seminar = Seminar.find(params[:id])
      end
    end

    def seminar_params
      params.require(:seminar).permit(:start_date, :end_date, :max_participants, :location_id, :additional_costs).merge(seminar_instance: @seminar_instance)
    end

  end
end
