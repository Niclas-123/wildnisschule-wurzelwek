class SeminarInstancesController < ApplicationController
  before_action :set_seminar_instance, only: %i[show edit update]
  before_action :set_seminar_type, only: %i[show edit update index]
  before_action :set_seminars, only: %i[show]

  def new
    @seminar_instance = SeminarInstance.new
  end

  def index
    @seminar_instances = SeminarInstance.where(seminar_type_id: params[:seminar_type_id])
  end

  def show
  end

  def edit
  end

  def update
    if @seminar_instance.update(seminar_instance_params)
      redirect_to seminar_instance_url(@seminar_instance), notice: "Du hast dein Seminar erfolgreich editiert"
    else
      render :edit, status: :unprocessable_entity
    end
  end

private

  def set_seminar_instance
    @seminar_instance = SeminarInstance.find(params[:id])
  end

  def set_seminar_type
    @seminar_type = SeminarType.find(params[:seminar_type_id])
  end

  def set_seminars
    @seminars = Seminar.where(seminar_instance: @seminar_instance)
  end

  def seminar_instance_params
    params.require(:seminar_instance).permit(:name, :description, :price, :seminar_type)
  end

end
