require 'rails_helper'

RSpec.describe "Vehicles API", type: :request do
  let!(:vehicles) { create_list(:vehicle, 5) }
  let(:vehicle_id) { vehicles.first.id }

  describe "POST /vehicles" do

    before { post '/vehicles', params: { vehicle: {id: "3479-47cd-9b20-9e317616a3f0" } } }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end

  describe "DELETE /vehicles/:id" do

    before { delete "/vehicles/#{vehicle_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
