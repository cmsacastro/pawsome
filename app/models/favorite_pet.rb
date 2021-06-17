class FavoritePet < ApplicationRecord
  belongs_to :pet
  belongs_to :user
end
