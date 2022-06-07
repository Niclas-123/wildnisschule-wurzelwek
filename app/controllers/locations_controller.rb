class LocationsController < ApplicationController
  load_and_authorize_resource

  before_action :set_location, only: %i[show]

  def show
  end

private

  def set_location
    @location = Location.find(params[:id])
  end

end
