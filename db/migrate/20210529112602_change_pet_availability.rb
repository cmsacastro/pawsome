class ChangePetAvailability < ActiveRecord::Migration[6.0]
  def change
    change_column :pets, :status, :string, default: "available"
  end
end
