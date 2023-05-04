# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

15.times do
  City.create!(city_name: Faker::Address.city)
end

35.times do
  Dogsitter.create!(name: Faker::Name.name, city_id: City.all.sample.id)
end

100.times do
  Dog.create!(name: Faker::Creature::Dog.name, race: Faker::Creature::Dog.breed, city_id: City.all.sample.id)
end

35.times do
  Stroll.create!(date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 5, format: :default), city_id: City.all.sample.id, dog_id: Dog.all.sample.id, dogsitter_id: Dogsitter.all.sample.id)
end