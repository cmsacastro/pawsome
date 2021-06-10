require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Simple seed file

# One user who is a 'seller'

Enquiry.destroy_all
User.destroy_all
Pet.destroy_all
puts "DB wiped"

user_one = User.new(email: "one@example.com", password: "123456", first_name: "Seb", last_name: "Saunier", company_name: "", nickname: "Sebby", address:"50 Battersea Park Rd, Nine Elms, London SW8 4AA")
user_one.save!
puts "Seb Saunier created. He wants to adopt a pet"

user_two = User.new(email: "two@example.com", password: "123456", first_name: "John", last_name: "Smith", company_name: "Battersea Dogs & Cats Home", nickname: "Johnny", address:"4 Battersea Park Rd, Nine Elms, London SW8 4AA")
user_two.save!
puts "Battersea Dogs & Cats Home created. They want people to adopt their pets"

user_three = User.new(email: "three@example.com", password: "123456", first_name: "Sally", last_name: "Fields", company_name: "", nickname: "Johnny", address:"16a Griffiths Road, London SW19 1SP")
user_three.save!
puts "Sally Fields created. She wants to make enquiries"

dog = Pet.new(
name: "Rocco", 
species: "dog", 
age: 5, 
breed: "Jack Russell", 
status: "avaiable", 
description: "Rocco is a sensitive little boy who has been very worried and shut down in kennels. As Rocco is so shy, he requires a quiet home where he can feel safe and build confidence in his own time. This does mean he is better suited to a suburban or countryside location.
Over time, we are seeing he is starting to come out of his shell and growing in confidence.",

user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: true,
other_children: true,
other_pets: false, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631523/q5x6go05uv8e2giksiy2ql6slwuw.jpg')
dog.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog.save!
puts "dog created"

dog2 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631523/q5x6go05uv8e2giksiy2ql6slwuw.jpg')
dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog2.save!
puts "dog created"

dog3 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog3.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog3.save!
puts "dog created"

dog4 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog4.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')


dog4.save!
puts "dog created"

dog5 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog5.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')


dog5.save!
puts "dog created"

dog6 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog6.save!
puts "dog created"

dog7 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog7.save!
puts "dog created"

dog8 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog8.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog8.save!
puts "dog created"

dog9 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog9.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog9.save!
puts "dog created"

dog10 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog10.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog10.save!
puts "dog created"

dog11 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog11.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog11.save!
puts "dog created"

dog12 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog12.save!
puts "dog created"

dog13 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog13.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog13.save!
puts "dog created"

dog14 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog14.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog14.save!
puts "dog created"

dog16 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog16.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog16.save!
puts "dog created"

dog17 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog17.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog17.save!
puts "dog created"

dog18 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog18.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
dog18.save!
puts "dog created"

dog19 = Pet.new(
name: "Rover", 
species: "dog", 
age: 5, 
breed: "labrador", 
status: "avaiable", 
description: "This is a dog. It is worse than a cat", 
user_id: user_two.id, 
address: user_two.address, 
cost: 100, 
garden: false,
other_children: true,
other_pets: true, 
available_time: 3,
special_needs: false )

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
dog19.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog19.save!
puts "dog created"

cat = Pet.new(name: "Kitty", species: "cat", age: 5, breed: "britsh shorthair", status: "avaiable", description: "This is a cat. It is better than a dog", user_id: user_two.id, address: "Battersea SW10", cost: 50)
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631518/d4drj4ern6mjxfin05cqxsegw1mc.jpg')
cat.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1622631523/q5x6go05uv8e2giksiy2ql6slwuw.jpg')
cat.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
cat.save!
puts "cat created"


enquiry_one = Enquiry.new(pet_id: dog.id, user_id: user_one.id, message: "I would like to adopt this dog, even though cats are obviously better")
enquiry_one.save!
puts "enquiry made by Seb Saunier about the dog from Battersea"

enquiry_two = Enquiry.new(pet_id: cat.id, user_id: user_two.id, message: "I would like to adopt this cat, because cats are obviously better")
enquiry_two.save!
puts "enquiry made by Battersea about the dog from Battersea"

