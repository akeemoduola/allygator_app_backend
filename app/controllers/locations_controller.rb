class LocationsController < ApplicationController
  # before_action :set_location, only: [:show, :update, :destroy]

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])

    last_location = @vehicle.locations.last
    
    if distance(last_location) <= 3.5
      @vehicle.current_latitude = location_params[:lat]
      @vehicle.current_longitude = location_params[:lng]
      @vehicle.save

      @vehicle.locations.create!(location_params)

      head :no_content
    end
  end

  private
    def location_params
      params.require(:location).permit(:lat, :lng, :at)
    end

    def distance(location)
      lat1 = location.lat
      lat2 = 52.53 #latitude of door2door office

      lng1 = location.lng
      lng2 = 13.403 #longitude of door2door office

      radius_of_earth = 6371
      diff_lat = to_rad(lat2 - lat1);
      diff_lng = to_rad(lng2 - lng1);

      a = Math.sin(diff_lat/2) * Math.sin(diff_lat/2) + Math.cos(to_rad(lat1)) * Math.cos(to_rad(lat2)) *  Math.sin(diff_lng/2) * Math.sin(diff_lng/2)
      c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))
      d = radius_of_earth * c
end
