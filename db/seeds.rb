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
    name:         'Hagi',
    address:      'Hokkaido, Japan',
    category:  "japanese",
    phone_number:  '0246-26-5174'
  },
  {
    name:         'Cuisine Urbaine Lien',
    address:      'Sapporo Odori, Hokkaido',
    category:  "french",
    phone_number:  '0120-23-8888'
  },
  {
    name:         'Nakajima',
    address:      'Kyoto, Japan',
    category:  "japanese",
    phone_number:  '0120-12-3456'
  },
   {
    name:         'Uosan Sakaba',
    address:      'Monzennakachp, Tokyo, Japan',
    category:  "japanese",
    phone_number:  '0120-33-4444'
  },
  {
    name:         'Chez Mikawa',
    address:      'Akasaka, Tokyo Japan',
    category:  "bergian",
    phone_number:  '090-556-2345'
  }
]

restaurants_attributes.each do |a|
  new_restaurant = Restaurant.new(a)
  new_restaurant.save
end

puts 'Finished!'
