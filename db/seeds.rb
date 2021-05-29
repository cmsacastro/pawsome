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

user_one = User.new(email: "one@example.com", password: "123456", first_name: "Seb", last_name: "Saunier", company_name: "")
user_one.save!
puts "Seb Saunier created. He wants to adopt a pet"

user_two = User.new(email: "two@example.com", password: "123456", first_name: "John", last_name: "Smith", company_name: "Battersea Dogs & Cats Home")
user_two.save!
puts "Battersea Dogs & Cats Home created. They want people to adopt their pets"

dog = Pet.new(name: "Rover", species: "dog", age: 5, breed: "labrador", status: "avaiable", description: "This is a dog. It is worse than a cat", user_id: user_two.id, address: "Battersea SW10", cost: 100)
dog.save!
puts "dog created"

cat = Pet.new(name: "Kitty", species: "cat", age: 5, breed: "britsh shorthair", status: "avaiable", description: "This is a cat. It is better than a dog", user_id: user_two.id, address: "Battersea SW10", cost: 50)
cat.save!
puts "cat created"


enquiry_one = Enquiry.new(pet_id: dog.id, user_id: user_one.id, message: "I would like to adopt this dog, even though cats are obviously better")
enquiry_one.save!
puts "enquiry made by Seb Saunier about the dog from Battersea"
