class SeminarsController < ApplicationController
  before_action :set_seminar, only: %i[show edit update]
  before_action :set_seminar_instance, only: %i[show edit update]
  before_action :set_seminar_type, only: %i[show edit update]

  def show
  end

  def edit
  end

  def update
    if @seminar_typee.update(seminar_params)
      redirect_to seminar_type_seminar_instance_seminar_path(@seminar_type, @seminar_instance, @seminar), notice: "Du hast dein Seminar erfolgreich editiert"
    else
      render :edit, status: :unprocessable_entity
    end
  end

private

  def set_seminar
    @seminar = Seminar.find(params[:id])
  end

  def set_seminar_instance
    @seminar_instance = SeminarInstance.find(params[:seminar_instance_id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.find(params[:seminar_type_id])
  end

  def seminar_params
    params.require(:seminar_type).permit(:name, :description)
  end
end
