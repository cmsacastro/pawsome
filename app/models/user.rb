class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sent_conversations, class_name: "Conversation", foreign_key: :sender_id
  has_many :sent_conversation_messages, through: :sent_conversations, source: :messages

  has_many :received_conversations, class_name: "Conversation", foreign_key: :recipient_id
  has_many :received_conversation_messages, through: :received_conversations, source: :messages

  has_many :favorite_pets
  has_many :favorites, through: :favorite_pets, source: :pet

  has_many :pets
  has_many :enquiries
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATSPECIES = ["Abyssinian Cat",
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

  DOGSPECIES = [
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

  def unread_messages
    sent_conversation_messages.where.not(user: self, read: true).count + received_conversation_messages.where.not(user: self, read: true).count
  end
end
