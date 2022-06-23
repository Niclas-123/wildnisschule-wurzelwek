module Frontend
  class SeminarTypesController < ApplicationController
    load_and_authorize_resource

    def index
      @seminar_types = SeminarType.all
    end

  end
end
