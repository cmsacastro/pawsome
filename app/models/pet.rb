class Pet < ApplicationRecord
  belongs_to :user
  has_many :enquiries

  has_many :favorite_pets
  # has_many :favorited_by, through: :favorite_pets, source: :user

  validates :name, :address, :species, :age, :breed, :description, :status, presence: true
  validates :description, length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }
  has_many_attached :photos

  def match_pets(user)
    matching = 0
    points = 25
    matching += 5 if self.breed == user.breed || user.breed == "no preference"
    matching += 5 if self.sex == user.sex || user.sex == "no preference"
    matching += 4 if self.special_needs == user.special_needs
    matching += 5 if self.age == user.age || user.age == 0
    matching += 3 if self.garden == user.garden || self.garden == false
    matching += 1 if self.other_pets == user.other_pets || self.other_pets == true
    matching += 1 if self.other_children == user.other_children || self.other_pets == true
    matching += 1 if self.available_time == user.available_time
    matching_percentage = matching.to_f / points * 100
    matching_percentage.to_i
  end

  CATBREED = ["Abyssinian Cat",
    "American Bobtail",
    "American Curl",
    "American Shorthair",
    "American Wirehair",
    "Balinese cat",
    "Bengal",
    "Birman",
    "Bombay",
    "British Longhair",
    "British Shorthair",
    "Burmese",
    "Californian Rex",
    "Chartreux",
    "Chinchilla Persian",
    "Cornish Rex",
    "Cymric",
    "Devon Rex",
    "Domestic shorthair",
    "Donskoy",
    "Egyptian Mau",
    "European Shorthair",
    "Exotic shorthair",
    "German Rex",
    "Himalayen",
    "Khao Manee",
    "Maine Coon",
    "Munchkin",
    "Nebelung",
    "Norwegian Forest cat",
    "Oriental",
    "Persian",
    "Peterbald",
    "Ragdoll",
    "Russian Blue",
    "Safari",
    "Scottish Fold",
    "Siamese Cat",
    "Siberian cat",
    "Singapura",
    "Snowshoe",
    "Somali",
    "Sphynx",
    "Tonkinese",
    "Toyger",
    "Turkish Angora",
    "Turkish Van",
    "York Chocolate"]

  DOGBREED = [
    "Airedale terrier",
    "Akita",
    "Alaskan Malamute",
    "American Staffordshire terrier",
    "American water spaniel",
    "Australian cattle dog",
    "Australian shepherd",
    "Australian terrier",
    "Basset hound",
    "Beagle",
    "Bearded collie",
    "Bedlington terrier",
    "Bernese mountain dog",
    "Bloodhound",
    "Border collie",
    "Border terrier",
    "Boston terrier",
    "Boxer",
    "Bull terrier",
    "Bulldog",
    "Bullmastiff",
    "Chihuahua",
    "Chinese shar-pei",
    "Chow chow",
    "Cocker spaniel",
    "Collie",
    "Curly-coated retriever",
    "Dachshund",
    "Dalmatian",
    "Doberman pinscher",
    "English cocker spaniel",
    "English setter",
    "English springer spaniel",
    "Fox terrier",
    "Foxhound",
    "French bulldog",
    "German shepherd",
    "German shorthaired pointer",
    "German wirehaired pointer",
    "Golden retriever",
    "Great Dane",
    "Greyhound",
    "Irish setter",
    "Irish water spaniel",
    "Irish wolfhound",
    "Jack Russell terrier",
    "Japanese spaniel",
    "Labrador retriever",
    "Lakeland terrier",
    "Maltese",
    "Manchester terrier",
    "Mastiff",
    "Norwich terrier",
    "Pomeranian",
    "Poodle",
    "Pug",
    "Rottweiler",
    "Saint Bernard",
    "Samoyed",
    "Schnauzer",
    "Scottish deerhound",
    "Scottish terrier",
    "Siberian husky",
    "Staffordshire bull terrier",
    "Weimaraner",
    "Welsh terrier",
    "Yorkshire terrier"]
end
