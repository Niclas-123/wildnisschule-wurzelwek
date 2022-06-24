module Frontend
  class SeminarInstancesController < ApplicationController
    before_action :set_seminar_instance, only: %i[show]
    before_action :set_seminar_type, only: %i[show index]
    before_action :set_seminars, only: %i[show]

    def index
      @seminar_instances = SeminarInstance.where(seminar_type: @seminar_type)
    end

    def show
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
  end
end
