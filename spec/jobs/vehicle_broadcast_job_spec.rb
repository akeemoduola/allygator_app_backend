require 'rails_helper'

RSpec.describe VehicleBroadcastJob, type: :job do
  describe "#perform" do
    let(:vehicle) { { id: "123" } }
    it "uploads vehicle" do
      ActiveJob::Base.queue_adapter = :test
      VehicleBroadcastJob.perform_later(vehicle)
      expect(VehicleBroadcastJob).to have_been_enqueued
    end
  end
end
