FactoryBot.define do
  factory :dealership do
    name { Faker::Address.street_name }

    trait :with_cars do
      after :create do |dealership|
        create_list :car, rand(20), dealerships: [dealership]
      end
    end
  end
end
