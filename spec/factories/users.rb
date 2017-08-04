require 'faker'


FactoryGirl.define do
  factory :user do
    username {Faker::FamilyGuy.character}
    email {Faker::Internet.email}
    password "testtest"
  end
end
