require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it { should have_many(:locations).dependent(:destroy) }
  it { should validate_presence_of(:id) }
  it { should respond_to(:current_latitude) }
  it { should respond_to(:current_longitude) }
end
