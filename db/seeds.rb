# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  Location.create(lat: Faker::Address.latitude, lng: Faker::Address.longitude, city: Faker::Address.city, state: Faker::Address.state, country: Faker::Address.country)
end

10.times do
  Song.create(artist: Faker::RockBand.name, album: Faker::Hipster.word, track: Faker::Hipster.sentence(3))
end

10.times do
  Bouquet.create(song_id: rand(1..10), custom_location: Faker::Hipster.word, location_id: rand(1..10), expiration_date: (Time.now + 700000), comment: Faker::Hipster.sentence(5), photo: "lightbulb.png")
end

