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
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0557934675', category: 'italian' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch, London', phone_number: '0556934575', category: 'chinese' }
dominos = { name: 'Dominos', address: '7 rue de la gare, Paris', phone_number: '0145934675', category: 'french' }
maruya = { name: 'Maruya', address: '15 avenue Clémenceau, Bordeaux', phone_number: '0645938775', category: 'japanese' }
leon = { name: 'Leon', address: '24 rue de la frite, Bruxell', phone_number: '0945938775', category: 'belgian' }

[dishoom, pizza_east, dominos, maruya, leon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
