class AddColumnsToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :garden, :boolean
    add_column :pets, :other_children, :boolean
    add_column :pets, :other_pets, :boolean
    add_column :pets, :available_time, :integer
  end
end
