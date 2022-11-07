FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.manufacture }
    price { rand(100) }
    state { Car.states.to_a.sample.first }
    dealerships { [create(:dealership)] }
  end
end
