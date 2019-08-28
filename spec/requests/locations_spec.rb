require 'rails_helper'

RSpec.describe "Locations API", type: :request do
  let!(:vehicle) { create(:vehicle) }
  let(:vehicle_id) { vehicle.id }

  describe "POST /vehicles/:id/locations" do
    let(:attributes) { { location: { lat: 50.912, lng: 13.243, at: "2017-12-02T12:00:00+10:00" } } }
    before { post "/vehicles/#{vehicle_id}/locations", params: attributes }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
