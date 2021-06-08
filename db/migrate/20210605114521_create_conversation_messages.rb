class CreateConversationMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :user
      t.references :conversation
      t.text :body
      t.boolean :read, default: false, null: false
      t.timestamps
    end
  end
end
