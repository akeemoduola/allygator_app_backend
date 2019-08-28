FactoryBot.define do
  factory :location do
    lat { Faker::Compass.quarter_wind_azimuth }
    lng { Faker::Compass.quarter_wind_azimuth }
    at { "2017-12-02T12:00:00+10:00" }
  end
end
