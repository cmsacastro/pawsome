class ChangeColumnsDefault < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :age, 'integer USING CAST(age AS integer)'
    change_column :users, :species, :string, default: "no preference"
    change_column :users, :breed, :string,  default: "no preference"
    change_column :pets, :species, :string, default: "no preference"
    change_column :pets, :breed, :string,  default: "no preference"
  end
end
