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
FavoritePet.destroy_all
puts "All favorite pets destroyed"
Enquiry.destroy_all
puts "All playdates deleted"
Conversation.destroy_all
puts "All conversations deleted"
User.destroy_all
puts "All users deleted"
Pet.destroy_all
puts "All pets wiped"

user_one = User.new(email: "one@example.com", password: "123456", first_name: "Linda", last_name: "McDowell", company_name: "", nickname: "Mc-D", address:"60 Claylands Rd, London SW8 1PH")
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624109306/christiana-rivers-O_XIvDy0pcs-unsplash_jfjedy.jpg')
user_one.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_one.save!
puts "Linda McDowell created"

user_two = User.new(email: "two@example.com", password: "123456", first_name: "John", last_name: "Smith", company_name: "All Dogs Matter", nickname: "Johnny", address:"30 Aylmer Parade, London N2 0PE")
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624109608/photo-1557862921-37829c790f19_oojors.jpg')
user_two.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_two.save!
puts "Jonh Smith from All Dogs Matter created."

user_three = User.new(email: "three@example.com", password: "123456", first_name: "Sally", last_name: "Fields", company_name: "", nickname: "Sally", address:"16a Griffiths Road, London SW19 1SP")

file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624109798/photo-1604983361403-ac3d3cbac41d_kjaeff.jpg')

user_three.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_three.save!
puts "Sally Fields created."

user_four = User.new(email: "four@example.com", password: "123456", first_name: "Susan", last_name: "Buckley", company_name: "Battersea Dogs & Cats Home", nickname: "Susan @ Battersea", address:"4 Battersea Park Rd, Nine Elms, London SW8 4AA")
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624110416/photo-1579119134757-5c38803f34fc_ljr1b1.jpg')
user_four.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_four.save!
puts "Susan Buckley from Battersea Homes added"

user_five = User.new(email: "five@example.com", password: "123456", first_name: "Jason", last_name: "Donovan", company_name: "RSPCA Kilburn Clinic", nickname: "Jay", address:"10 Cambridge Ave, North Maida Vale, London NW6 5AB")
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624110961/1140-06-21-sexiest-men-over-50-jimmy-smits.imgcache.revb5da5620c2585314c238fecb37256dc1.web_du6l2x.jpg')
user_five.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_five.save!
puts "Jason Donovan from RSCPA Kilburn created"

user_six = User.new(email: "six@example.com", password: "123456", first_name: "Celia", last_name: "Hammond", company_name: "Celia Hammond Animal Trust", nickname: "Cee", address:"151-153 Barking Rd, London E16 4HQ")
file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624110609/photo-1508214751196-bcfd4ca60f91_d3qlsd.jpg')
user_six.photo.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
user_six.save!
puts "Celia Hammond created."

dog = Pet.new(
  name: "Rocco", 
  species: "dog", 
  age: 5, 
  breed: "Jack Russell Terrier",
  status: "available", 
  description: "Rocco is a sensitive little boy who has been very worried and shut down in kennels. As Rocco is so shy, he requires a quiet home where he can feel safe and build confidence in his own time. This does mean he is better suited to a suburban or countryside location.
  Over time, we are seeing he is starting to come out of his shell and growing in confidence.",
  user_id: user_two.id, 
  address: user_two.address, 
  cost: 150,
  garden: true,
  other_children: true,
  other_pets: false, 
  available_time: 3,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1623182134/wfzgfngqd7fxmp6ob8ye.jpg')
  dog.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1623182294/qp4mwp3iekj6qzjwpibk.jpg')
  dog.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog.save!
puts "dog created1"

dog2 = Pet.new(
  name: "Shelby",
  species: "dog", 
  age: 4, 
  breed: "Yorkshire Terrier",
  status: "available", 
  description: "Shelby is a kind, caring and lovely girl. She is great with children and other dogs. Shelby loves cuddles, being outside and exploring but she would also like to have a loving family and a warm couch to sleep on.",
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 2,
  special_needs: false,
  sex: "female"
  )


  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565008/yqlgsgl5dbdpdp8cmjqfhzsbm58i.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565009/tj8vid0kfd582hjtkig8duu9q1up.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565014/y42olzpvcfl71f7lw7qb4ftwypso.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565017/qa7y7xwkv0wt6a3tj7vxpni8ddtx.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565021/w4tluaaeoo1bj9ssivf1rxvob005.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624565024/2p5h4o72tgqsiwgh74vj5ivyq691.jpg')
  dog2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')


dog2.save!
puts "dog created2"

dog3 = Pet.new(
  name: "Lassie", 
  species: "dog", 
  age: 8, 
  breed: "Labrador",
  status: "available", 
  description: "Lassie is a VERY friendly and caring girl! She is a breed which is known for their intelligence, obedience, kindness and loyalty… she was even found in town greeting people and walking up the street beside them! Lassie is great with children (8+ due to her size) and other dogs, she would make a perfect fit in a loving family. ", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: true,
  other_children: true,
  other_pets: true, 
  available_time: 1,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://a-z-animals.com/media/animals/images/original/labrador_retriever.jpg')
  dog3.photos.attach(io: file, filename: 'labrador_retriever.jpg', content_type: 'image/jpg')

dog3.save!
puts "dog created3"

dog4 = Pet.new(
  name: "Vencel", 
  species: "dog", 
  age: 1, 
  breed: "Border Collie",
  status: "available", 
  description: "Vencel is a very friendly and nice boy, He is great with children and other dogs. He LOVES getting tummy rubs and going on walks…. so it shouldn’t be too hard to get him used to his new life! ", 
  user_id: user_five.id, 
  address: user_five.address, 
  cost: 135,
  garden: true,
  other_children: true,
  other_pets: true, 
  available_time: 4,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1508109742312-c7d531211d11?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
  dog4.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog4.save!
puts "dog created4"

dog5 = Pet.new(
  name: "Melinda", 
  species: "dog", 
  age: 4, 
  breed: "German Shepherd",
  status: "available", 
  description: "Melinda is one of our newest addition to the shelter , she is very friendly and nice towards people, and is good with other dogs and children ( all ages).", 
  user_id: user_six.id, 
  address: user_six.address, 
  cost: 100,
  garden: true,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://images.unsplash.com/photo-1589941013453-ec89f33b5e95?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=403&q=80')
  dog5.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog5.save!
puts "dog created5"

dog6 = Pet.new(
  name: "Tomi", 
  species: "dog", 
  age: 2, 
  breed: "Labrador",
  status: "available", 
  description: "Tomi is a very friendly and lovely boy. He is good with other dogs and children ( all ages). Tomi likes to be cuddled and LOVES to smile, he is always smiling. He was rescued after we found him wandering around on the street.", 
  user_id: user_two.id, 
  address: user_two.address, 
  cost: 200,
  garden: true,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/labrador-4_v0tye4.jpg')
  dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/labrador-1_trtg0u.jpg')
  dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
    file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/labrador-3_krfbss.jpg')
  dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
    file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/labrador-2_iqunlj.jpg')
  dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
    file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/labrador-5_uika9c.jpg')
  dog6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog6.save!
puts "dog created"

dog7 = Pet.new(
  name: "Zara", 
  species: "dog", 
  age: 2, 
  breed: "Jack Russell Terrier",
  status: "available", 
  description: "Zara is a very lovely, playful and friendly girl, she is highly energetic and a scavenger so will need lots of exercise and training. She is good with children, dogs and cats although we do not recommend her for first time owners. At the moment Zara has heartworm and will need her medicine 2x a day which we provide.", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: true,
  sex: "female" )

  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/Jack-russell-1_btwnil.jpg')
  dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/jack-russell-2_abofsl.jpg')
  dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/jack-russell-3_wpcax3.jpg')
  dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/jack-russell-4_gdp2k3.jpg')
  dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556199/jack-russell-5_aihyem.jpg')
  dog7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog7.save!
puts "dog created"

dog8 = Pet.new(
  name: "Benji", 
  species: "dog", 
  age: 5, 
  breed: "Jack Russell Terrier",
  status: "available", 
  description: "Beautiful little Benji is a worried soul looking for savvy owners that will accept his needs and give him all the patience and TLC that he needs. Unfortunately Benji has bitten in his previous home, largely around handling when putting on a harness. This is an area where new owners would need to take things very slow with Benji and will need on-going work.", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 6,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1597513942294-f7e2cc5986d6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
  dog8.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog8.save!
puts "dog created"

dog9 = Pet.new(
  name: "Yoda", 
  species: "dog", 
  age: 1, 
  breed: "Pug", 
  status: "available", 
  description: "Yoda, not one to be picked on looks alone, has quite a history of tricky behaviour that will need to be continued to be worked on and managed in his new home. Although he is young, it is important for prospective owners to appreciate that Yoda has always been a worried and anxious dog and devoted training alongside of management are the keys he needs to keep on improving.", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1553698217-934b000f1f00?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80')
  dog9.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog9.save!
puts "dog created"

dog10 = Pet.new(
  name: "Luce", 
  species: "dog", 
  age: 8, 
  breed: "Yorkshire Terrier",
  status: "available", 
  description: "Luce is an absolutely lovely little lady. She is blind so is looking for understanding owners with a home that is suitable for her- a place in which she can learn and adapt, as she does bump into things. Despite this she loves her walks and still has plenty of energy!", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://images.unsplash.com/photo-1443806798002-651c462956ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80')
  dog10.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog10.save!
puts "dog created"

dog11 = Pet.new(
  name: "Ziggy", 
  species: "dog", 
  age: 5, 
  breed: "Yorkshire Terrier",
  status: "available", 
  description: "Ziggy is a lovely boy but is also quite an anxious lad and if very worried around new people and dogs, so will need calm, patient owners who would be willing to slowly introduce him to these new things in his own time.", 
  user_id: user_five.id, 
  address: user_five.address, 
  cost: 135,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 1,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1561905887-3461f30ee843?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
  dog11.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog11.save!
puts "dog created"

dog12 = Pet.new(
  name: "Edith", 
  species: "dog", 
  age: 2, 
  breed: "Yorkshire Terrier",
  status: "available", 
  description: "Meet Edith! She is a beautiful dog that came into our care as a stray. Since being in our care, she has undergone multiple leg surgeries, BOAS surgery and will need ongoing hydrotherapy therefore, her new owners will need to be committed to her ongoing medical finances.", 
  user_id: user_six.id, 
  address: user_six.address, 
  cost: 60,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/yorkie-2_olr1fy.jpg')
  dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/yorkie-5_wvpydn.jpg')
  dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/yorkie-4_qbort7.jpg')
  dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/yorkie-1_u9x4rt.jpg')
  dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')
  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624556200/yorkie-3_ibh6t8.jpg')
  dog12.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog12.save!
puts "dog created"

dog13 = Pet.new(
  name: "Bee", 
  species: "dog", 
  age: 3, 
  breed: "Yorkshire Terrier",
  status: "available", 
  description: "Bee is a beautiful and energetic girl who adores playing with her toys and playing fetch games. She is looking for a home in a quiet location with access to rural walking routes, where she can get to know her new owners without many distractions and work on her training.", 
  user_id: user_five.id, 
  address: user_five.address, 
  cost: 135,
  garden: false,
  other_children: true,
  other_pets: false, 
  available_time: 5,
  special_needs: false )

  file = URI.open('https://images.unsplash.com/photo-1615261025210-0d1762137b42?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=891&q=80')
  dog13.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog13.save!
puts "dog created"

dog14 = Pet.new(
  name: "Mia", 
  species: "dog", 
  age: 3, 
  breed: "Greyhound", 
  status: "available", 
  description: "Mia is a bouncy, outgoing and affectionate girl who is looking for people prepared to help her settle and get used to the sights and sounds of a new home.", 
  user_id: user_six.id, 
  address: user_six.address, 
  cost: 80,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false )

  file = URI.open('https://res.cloudinary.com/dk4ojzhp0/image/upload/v1624115134/photo-1534719381421-0252911b5944_rfm354.jpg')
  dog14.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog14.save!
puts "dog created"

dog16 = Pet.new(
  name: "Jack", 
  species: "dog", 
  age: 9, 
  breed: "Jack Russell Terrier",
  status: "available", 
  description: "Jack is quiet chap who's not one for too much of a fuss. From what we've seen of him at Old Windsor, Jack is happy in the company of people but prefers to keep himself to himself. Jack does appear worried by some people and will choose to keep his distance.", 
  user_id: user_five.id, 
  address: user_five.address, 
  cost: 135,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1608399404171-1921a0398c7b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80')
  dog16.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog16.save!
puts "dog created"

dog17 = Pet.new(
  name: "Ezra", 
  species: "dog", 
  age: 8, 
  breed: "Bulldog", 
  status: "available", 
  description: "This gorgeous but insecure Bulldog is looking for a family who will help him settle into his new home at his own pace. Once Ezra has come around, he has shown to be very loving dog and will be a delight in the home.", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: true,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "male" )

  file = URI.open('https://images.unsplash.com/photo-1611611158876-41699b77a059?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80')
  dog17.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog17.save!
puts "dog created"

dog18 = Pet.new(
  name: "Phoebe", 
  species: "dog", 
  age: 3, 
  breed: "Greyhound", 
  status: "available", 
  description: "Phoebe is a young adult Greyhound with lovely manners but can be a little shy when first meeting people. Phoebe's new owners will need to be prepared to take things slow and build a bond with her. She loves playing with tennis balls so making friends with Phoebe will be lots of fun.", 
  user_id: user_two.id, 
  address: user_two.address, 
  cost: 220,
  garden: true,
  other_children: false,
  other_pets: true, 
  available_time: 1,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://images.unsplash.com/photo-1528797744628-e3f7a01cf485?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
  dog18.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

  dog18.save!
puts "dog created"

dog19 = Pet.new(
  name: "Jessie", 
  species: "dog", 
  age: 9, 
  breed: "Jack Russell Terrier",
  status: "available", 
  description: "Jessie is a loving and friendly terrier who will want all your devoted attention. She was found as a stray so we do not have any history on her past home but she has made quite the impression on all the staff here at Battersea Brands Hatch. She is looking for owners who have had experience with terriers previously.", 
  user_id: user_four.id, 
  address: user_four.address, 
  cost: 155,
  garden: false,
  other_children: false,
  other_pets: true, 
  available_time: 3,
  special_needs: false,
  sex: "female" )

  file = URI.open('https://images.unsplash.com/photo-1515415912532-e9d60b5b9f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80')
  dog19.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

dog19.save!
puts "dog created"

cat = Pet.new(name: "Kitty", species: "cat", age: 5, breed: "britsh shorthair", status: "avaiable", description: "This is a cat. It is better than a dog", user_id: user_two.id, address: "Battersea SW10", cost: 50)
file = URI.open('https://images.unsplash.com/photo-1575964479874-9711db881a4e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80')
cat.photos.attach(io: file, filename: 'nes.png', content_type: 'image/jpg')

cat.save!
puts "cat created"

