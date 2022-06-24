module Admin
  class SeminarInstancesController < Admin::BaseController
    load_and_authorize_resource

    before_action :set_seminar_instance, only: %i[show edit update]
    before_action :set_seminar_type, only: %i[index new create edit]
    before_action :set_seminars, only: %i[show]

    def show
    end

    def index
      @seminar_instances = SeminarInstance.where(seminar_type: @seminar_type)
    end

    def new
      @seminar_instance = SeminarInstance.new
    end

    def create
      @seminar_instance = SeminarInstance.new(seminar_instance_params).merge(seminar_type: @seminar_type)
      if @seminar_instance.save
        redirect_to admin_seminar_instances_path, notice: "Du hast erfolgreich ein neues Seminar erstellt!"
      else
        render :new, alert: "Da ist leider etwas schief gelaufen :/"
      end
    end

    def edit
    end

    def update
      if @seminar_instance.update(seminar_instance_params)
        redirect_to admin_seminar_type_seminar_instance_path, notice: "Du hast den Seminar-typ erfolgreich editiert"
      else
        render :edit, status: :unprocessable_entity
      end
    end

  private

    def seminar_instance_params
      params.require(:seminar_instance).permit(:name, :description)
    end

    def set_seminar_instance
      @seminar_type = SeminarInstance.find(params[:id])
    end

    def set_seminar_type
      @seminar_type = SeminarType.find(params[:seminar_type_id])
    end

    def set_seminars
      @seminars = Seminar.where(seminar_instance: @seminar_instance)
    end
  end
end
