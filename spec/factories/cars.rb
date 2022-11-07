FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.make_and_model }
    price { rand(100) }
    state { Car.states.to_a.sample.first }
    dealerships { [create(:dealership)] }
  end
end
