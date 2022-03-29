# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeds creation'
puts 'Destroy all Users'
User.destroy_all
puts 'Destroy all Estimations'
Estimation.destroy_all

puts "Create new users"
felix = User.create!(email: "f@gmail.com", password: "azerty", first_name: "Felix", last_name: "Foiret", address: "4 rue Pierre Dupont, 59800 Lille", phone_number: "0659516507")
puts "User ok..."

puts "create estimations"
e1 = Estimation.create!(thematic: "couverture", description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum", done: true, workforce: 2, term: 3, user_id: felix.id, photo_url: 'https://images.unsplash.com/photo-1504241932178-447c4c934e98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2075&q=80')
puts "Estimation ok..."

puts "All is GooooOOOooooOOOod..."
