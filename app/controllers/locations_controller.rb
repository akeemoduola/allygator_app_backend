class LocationsController < ApplicationController
  # before_action :set_location, only: [:show, :update, :destroy]

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle.current_latitude = location_params[:lat]
    @vehicle.current_longitude = location_params[:lng]
    @vehicle.save
    
    @vehicle.locations.create!(location_params)

    head :no_content
  end

  private
    def location_params
      params.require(:location).permit(:lat, :lng, :at)
    end
end
