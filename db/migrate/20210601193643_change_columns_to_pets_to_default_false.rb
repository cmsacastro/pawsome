class ChangeColumnsToPetsToDefaultFalse < ActiveRecord::Migration[6.0]
  def change
    change_column :pets, :garden, :boolean, default: false
    change_column :pets, :other_children, :boolean, default: false
    change_column :pets, :other_pets, :boolean, default: false
    add_column :pets, :special_needs, :boolean, default: false
  end
end
