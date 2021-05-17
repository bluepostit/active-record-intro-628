# This is where you can create initial data for your app.
require 'faker'

# Restaurant.destroy_all

puts 'Creating restaurants...'
tour_d_argent = Restaurant.new(name: "La Tour d'Argent", address: 'Paris')
tour_d_argent.save!

chez_gladines = Restaurant.new(name: "Chez Gladines", address: 'Marseille')
chez_gladines.save!

# Create 10 restaurants with data from Faker

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  Restaurant.create!(name: name, address: address)
end


puts 'Finished!'
