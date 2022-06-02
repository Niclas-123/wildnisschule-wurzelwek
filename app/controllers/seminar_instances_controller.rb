class SeminarInstancesController < ApplicationController

  def new
    @seminar_instance = SeminarInstance.new
  end

  def index
    @seminar_instances = SeminarInstance.all
  end

end
