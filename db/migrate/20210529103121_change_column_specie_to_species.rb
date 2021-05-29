class ChangeColumnSpecieToSpecies < ActiveRecord::Migration[6.0]
  def change
    rename_column :pets, :specie, :species
  end
end
