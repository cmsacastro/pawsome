class CreateFavoritePets < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_pets do |t|
      t.integer :pet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
