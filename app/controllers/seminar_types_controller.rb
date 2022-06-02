class SeminarTypesController < ApplicationController
  before_action :set_seminar_type, only: %i[show edit update]

  def index
    @seminar_types = SeminarType.all
  end

  def edit
  end

  def update
    if @seminar_typee.update(seminar_type_params)
      redirect_to seminar_type_path, notice: "Du hast den Seminar-typ erfolgreich editiert"
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
