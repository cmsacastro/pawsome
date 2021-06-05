class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :garden, :boolean, default: false
    add_column :users, :other_children, :boolean, default: false
    add_column :users, :other_pets, :boolean, default: false
    add_column :users, :available_time, :integer
    add_column :users, :species, :string
    add_column :users, :breed, :string
    add_column :users, :age, :string
    add_column :users, :description, :text
    add_column :users, :address, :string
    add_column :users, :special_needs, :boolean, default: false
  end
end

