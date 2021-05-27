class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :breed
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
