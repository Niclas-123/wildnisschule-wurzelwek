class SeminarInstancesController < ApplicationController
  before_action :set_seminar_instance, only: %i[show edit update]
  before_action :set_seminar_type, only: %i[show edit update index]
  before_action :set_seminars, only: %i[show]

  def new
    @seminar_instance = SeminarInstance.new
    authorize! :new, @seminar_instance
  end

  def index
    @seminar_instances = SeminarInstance.where(seminar_type: @seminar_type)
  end

  def show
  end

  def update
    authorize! :update, @seminar_instance
    if @seminar_instance.update(seminar_instance_params)
      redirect_to seminar_type_seminar_instance_url(@seminar_type, @seminar_instance), notice: "Du hast dein Seminar erfolgreich editiert"
    else
      render :edit, status: :unprocessable_entity
    end
  end

private

  def set_seminar_instance
    @seminar_instance = SeminarInstance.friendly.find(params[:id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.friendly.find(params[:seminar_type_id])
  end

  def set_seminars
    @seminars = Seminar.where(seminar_instance: @seminar_instance)
  end

  def seminar_instance_params
    params.require(:seminar_instance).permit(:name, :description, :price, :seminar_type)
  end
end
