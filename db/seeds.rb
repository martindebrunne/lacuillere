# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(5..10).to_a.sample.times do
  Restaurant.create(name: Faker::Company.name,
    address: Faker::Address.street_address + ',' + Faker::Address.zip + ' - ' + Faker::Address.city + ', ' + Faker::Address.country,
    phone_number: '0' + (1..9).to_a.sample.to_s + ' XX XX XX XX XX',
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end
