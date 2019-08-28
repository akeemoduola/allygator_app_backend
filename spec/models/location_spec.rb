require 'rails_helper'

RSpec.describe Location, type: :model do
  it { should belong_to(:vehicle) }
  it { should respond_to(:lat) }
  it { should respond_to(:lng) }
  it { should respond_to(:at) }
end
