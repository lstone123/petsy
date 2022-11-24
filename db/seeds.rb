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

dog_owner = User.create(email: 'testemail@test.com', password: 123456, first_name: 'Bob', last_name: 'Jones', sitter: false, bio: "My name is Bob and I'm based in London. I have a gorgeous German Shepherd called Laura who is very friendly and well socialised!")
puts "I am creating a new user"
dog_owner1 = User.create(email: 'testemail1@test.com', password: 123456, first_name: 'Sally', last_name: 'Smith', sitter: false, bio: "My name is Sally. London based with a 2 year old spaniel - Anna")
puts "I am creating a new user"
dog_owner2 = User.create(email: 'testemail2@test.com', password: 123456, first_name: 'Tim', last_name: 'Timothy', sitter: false, bio: "I'm Tim, I live in Cheshire and I have a little Pomeranian puppy called Jess")
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

Pet.create(description: "2 year old German Shepherd called Laura. She's very friendly and well socialised with other dogs. Will love cuddles all day!", species: "dog", age: "2", requirements: "none", name: "Laura", user_id: dog_owner.id)
puts "I am creating a new pet"
Pet.create(description: "9 year old German Shepherd called Emma. She's very well trained and loves cuddles on the sofa. She's a bit arthritic so needs to be given a supplement every day but otherwise is very low maintenance.", species: "dog", age: 9, requirements: "Needs to be given a supplement for joints", name: "Emma", user_id: dog_owner.id)
puts "I am creating a new pet"
Pet.create(description: "This is a dog", species: "dog", age: "2", requirements: "none", name: "Anna", user_id: dog_owner1.id)
puts "I am creating a new pet"
Pet.create(description: "This is a dog", species: "dog", age: "2", requirements: "none", name: "Jess", user_id: dog_owner2.id)
puts "I am creating a new pet"

SitterProfile.create(user_id: sitter.id, species_preference: "cat", description: "My name is Will. I love cats and have looked after many over the last couple of years - both as a live in sitter and visiting for a few hours a day for morning / evening meals and socialising. Feel free to reach out with any booking requests and I'll get back as quick as I can.", address: "10 Downing Street")
puts "I am creating a new sitter"
SitterProfile.create(user_id: sitter1.id, species_preference: "dog", description: "Hi there, my name is Kat and I'm based in Central London. I love dogs and grew up with them in our family home. I have looked after dogs for the last 3 years and would love to look after yours - please get in touch!", address: "Buckingham Palace")
puts "I am creating a new sitter"
SitterProfile.create(user_id: sitter2.id, species_preference: "dog", description: "Hi, I'm George and I live in Troys, Kinglsand Road. I've had dogs since I was 11 so your pets would be in great hands with me. Feel free to reach out and I'll get back to any requests as quickly as possible.", address: "N1 6NG")
puts "I am creating a new sitter"
SitterProfile.create(user_id: sitter3.id, species_preference: "bird", description: "I have a macau called Nigel who is 22 years old so I'm very familiar with any special needs that your bird may have. I'm based in Windsor so please feel free to reach out if you're local.", address: "Windsor Castle")
puts "I am creating a new sitter"
SitterProfile.create(user_id: sitter4.id, species_preference: "dog", description: "Hi my names Ziggy. I have looked after dogs for 3 years and would love to look after your pet!")
puts "I am creating a new sitter"
