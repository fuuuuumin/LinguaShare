class CreateChatRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_rooms do |t|
      t.string :room_name,             null: false
      t.text :discription,             null: false
      t.integer :language_id,                null: false
      t.references :user,             null: false, foreign_key: true
      t.timestamps
    end
  end
end
