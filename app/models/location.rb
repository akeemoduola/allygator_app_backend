class Location < ApplicationRecord
  belongs_to :vehicle
  after_create_commit { VehicleBroadcastJob.perform_later vehicle }
end
