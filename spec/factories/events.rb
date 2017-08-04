require 'faker'

FactoryGirl.define do
  factory :event do
    user_id 2
    name { Faker::Name.name}
    # date
    # time
    location {Faker::Lovecraft.location}
  end
end
