class Vehicle < ApplicationRecord
  self.primary_key = 'id'
  has_many :locations, dependent: :destroy
  validates_presence_of :id

  after_create_commit { VehicleBroadcastJob.perform_later self }

end
