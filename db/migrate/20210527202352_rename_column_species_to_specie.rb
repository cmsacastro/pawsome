class RenameColumnSpeciesToSpecie < ActiveRecord::Migration[6.0]
  def change
    rename_column :pets, :species, :specie
  end
end
