# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#

User.create!(
  email:                 'user@mail.com',
  role:                  'user',
  password:              'qwer1234',
  password_confirmation: 'qwer1234'
)

User.create!(
  email:                 'admin@mail.com',
  role:                  'admin',
  password:              'qwer1234',
  password_confirmation: 'qwer1234'
)

FactoryBot.create_list :car, rand(20)
FactoryBot.create_list :dealership, rand(20)

dealerships = Dealership.all
cars = Car.all

200.times.each do |i|
  d = dealerships.sample
  d.cars << cars.sample
end
