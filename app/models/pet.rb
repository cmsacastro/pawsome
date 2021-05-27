class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :address, :species, :age, :breed, :description, :status, presence: true
  validates :description, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed" }
end
