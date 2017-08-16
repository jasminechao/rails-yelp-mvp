# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     "belgian"
  },
  {
    name:         "La truffière",
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     "french"
  },
  {
    name:         "Ding tai fung",
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     "chinese"
  },
  {
    name:         "Olive garden",
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     "italian"
  },
  {
    name:         "Ishin",
    address:      Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     "japanese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
