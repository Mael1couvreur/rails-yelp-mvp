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
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'italian' }
pizza_east = { name: 'Smart Green Corner', address: "20 rue Castelnau d'Auros 33800 Bordeaux France", category: 'chinese' }
munchies = { name: 'Munchies', address: '21 rue des Augustins, Bordeaux', category: 'italian' }
restO =  { name: "Rest'O", address: '16 quai de Bacalan, Bordeaux', category: 'japanese' }
banana = { name: 'Banana Café', address: '5 cours Pasteur, Bordeaux', category: 'french' }
wild = { name: 'Wild Note Vegan Burger', address: '20 rue Sanche de Pomiers 33000 Bordeaux', category: 'belgian' }

[dishoom, pizza_east, munchies, restO, banana, wild].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
