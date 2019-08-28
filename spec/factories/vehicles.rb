FactoryBot.define do
  factory :vehicle do
    id { Faker::Blockchain::Bitcoin.address }
  end
end
