class SetAgeDefault0 < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :age, :integer, default: 0
    change_column :pets, :age, :integer, default: 0
  end
end
