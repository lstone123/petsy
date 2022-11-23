# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
SitterProfile.destroy_all
Pet.destroy_all
User.destroy_all
puts "destroying the db"

dog_owner = User.create(email: 'testemail@test.com', password: 123456, first_name: 'Bob', last_name: 'Jones', sitter: false)
puts "I am creating a new user"
dog_owner1 = User.create(email: 'testemail1@test.com', password: 123456, first_name: 'Sally', last_name: 'Smith', sitter: false)
puts "I am creating a new user"
dog_owner2 = User.create(email: 'testemail2@test.com', password: 123456, first_name: 'Tim', last_name: 'Timothy', sitter: false)
puts "I am creating a new user"
sitter = User.create(email: 'testemail3@test.com', password: 123456, first_name: 'Will', last_name: 'Taylor', sitter: true)
puts "I am creating a new user"
sitter1 = User.create(email: 'testemail4@test.com', password: 123456, first_name: 'Kat', last_name: 'Brown', sitter: true)
puts "I am creating a new user"
sitter2 = User.create(email: 'testemail5@test.com', password: 123456, first_name: 'George', last_name: 'Hill', sitter: true)
puts "I am creating a new user"
sitter3 = User.create(email: 'testemail6@test.com', password: 123456, first_name: 'Louise', last_name: 'Stone', sitter: true)
puts "I am creating a new user"
sitter4 = User.create(email: 'testemail7@test.com', password: 123456, first_name: 'Ziggy', last_name: 'Bartkevicius', sitter: true)
puts "I am creating a new user"

Pet.create(description: "This is a dog", species: "dog", age: "2", requirements: "none", name: "Laura", user_id: dog_owner.id)
Pet.create(description: "This is a dog", species: "dog", age: "2", requirements: "none", name: "Anna", user_id: dog_owner1.id)
Pet.create(description: "This is a dog", species: "dog", age: "2", requirements: "none", name: "Jess", user_id: dog_owner2.id)

SitterProfile.create(user_id: sitter.id, species_preference: "dog", description: "I have looked after dogs for 3 years and would love to look after your pet", address: "10 Downing Street")
SitterProfile.create(user_id: sitter1.id, species_preference: "dog", description: "I have looked after dogs for 3 years and would love to look after your pet", address: "Buckingham Palace")
SitterProfile.create(user_id: sitter2.id, species_preference: "dog", description: "I have looked after dogs for 3 years and would love to look after your pet", address: "N1 6NG")
SitterProfile.create(user_id: sitter3.id, species_preference: "dog", description: "I have looked after dogs for 3 years and would love to look after your pet", address: "Windsor Castle")
SitterProfile.create(user_id: sitter4.id, species_preference: "dog", description: "I have looked after dogs for 3 years and would love to look after your pet")
