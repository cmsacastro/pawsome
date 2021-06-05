class AddSexToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :sex, :string, default: "no preference"
  end
end
