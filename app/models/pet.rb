class Pet < ApplicationRecord
  belongs_to :user
  has_many :enquiries
  validates :name, :address, :species, :age, :breed, :description, :status, presence: true
  validates :description, length: { maximum: 100, too_long: "%{count} characters is the maximum allowed" }
  has_many_attached :photos

  def match_pets(user)
    matching = 0
    points = 20
    matching += 7 if self.breed == user.breed
    matching += 4 if self.special_needs == user.special_needs
    matching += 4 if self.age == user.age
    matching += 2 if self.garden == user.garden
    matching += 1 if self.other_pets == user.other_pets
    matching += 1 if self.other_children == user.other_children
    matching += 1 if self.available_time == user.available_time
    matching_percentage = matching.to_f / points * 100
    matching_percentage.to_i
  end
end
