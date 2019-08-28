class VehicleBroadcastJob < ApplicationJob
  queue_as :default

  def perform(vehicle)
    ActionCable.server.broadcast 'vehicle_channel', vehicle
  end
end
