class AddCostToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :cost, :integer
  end
end
