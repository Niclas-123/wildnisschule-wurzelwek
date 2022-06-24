module Admin
  class SeminarTypesController < Admin::BaseController
    load_and_authorize_resource

    before_action :set_seminar_type, only: %i[show edit update]

    def index
      @seminar_types = SeminarType.all
    end

    def new
      @seminar_type = SeminarType.new
    end

    def create
      @seminar_type = SeminarType.new(seminar_type_params)
      if @seminar_type.save
        redirect_to admin_seminar_types_path, notice: "Du hast erfolgreich einen Seminar Typen erstellt!"
      else
        render :new, alert: "Da ist leider etwas schief gelaufen :/"
      end
    end

    def edit
    end

    def update
      if @seminar_type.update(seminar_type_params)
        redirect_to admin_seminar_type_path, notice: "Du hast den Seminar-typ erfolgreich editiert"
      else
        render :edit, status: :unprocessable_entity
      end
    end

  private

    def set_seminar_type
      @seminar_type = SeminarType.find(params[:id])
    end

    def seminar_type_params
      params.require(:seminar_type).permit(:name, :description)
    end
  end
end
