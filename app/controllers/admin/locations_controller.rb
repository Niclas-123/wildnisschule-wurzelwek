module Admin
  class LocationsController < Admin::BaseController

    before_action :set_location, only: %i[edit update show]

    def index
      @locations = Location.all
    end

    def new
      @location = Location.new
    end

    def create
      @location = Location.new(location_params)
      if @location.save
        flash[:notice] = "Du hast erfolgreich einen neuen Ort erstellt :)"
        redirect_to admin_location_path(@location)
      else
        flash[:alert] = "Da ist etwas schief gelaufen :/"
        render :new, status: :unporcessable_eintity
      end
    end

    def edit
    end

    def update
      if @location.update(location_params)
        flash[:notice] = "Du hast " + @location.name +  " erfolgreich editiert :)"
        redirect_to admin_location_path(@location)
      else
        flash[:alert] = "Da ist etwas schief gelaufen :/"
        render :edit, status: :unporcessable_eintity
      end
    end

  private

    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:description, :name, :latitude, :longitude, :adress, :location_image)
    end

  end
end
