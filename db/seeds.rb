# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

puts 'Creating sample restaurants...'
10.times do
  Restaurant.create!(
    name: Faker::Cannabis.brand,
    category: Restaurant::CATEGORIES.sample,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
puts 'Finished!'
