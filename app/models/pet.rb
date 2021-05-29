class Pet < ApplicationRecord
  belongs_to :user
  has_many :enquiries
  validates :name, :address, :species, :age, :breed, :description, :status, presence: true
  validates :description, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed" }
  has_many_attached :photos
end
