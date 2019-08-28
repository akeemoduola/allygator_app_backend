class VehiclesController < ApplicationController

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.current_latitude = nil
    @vehicle.current_longitude = nil
    @vehicle.save

    head :no_content
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy

    head :no_content
  end

  private
    def vehicle_params
      params.require(:vehicle).permit(:id)
    end
end
