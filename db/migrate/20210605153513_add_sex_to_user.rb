class AddSexToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :sex, :string, default: "no preference"
  end
end
