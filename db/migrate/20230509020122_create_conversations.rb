class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.integer :sender_id
      t.integer :receiver_id
#buat conversation 
      t.timestamps
    end
  end
end
