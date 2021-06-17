class AddForeignKeyToFavoritePetTable < ActiveRecord::Migration[6.0]
  def change
    # add foreign key or reference or something
    add_foreign_key "favorite_pets", "users"
    add_foreign_key "favorite_pets", "pets"
  end
end
