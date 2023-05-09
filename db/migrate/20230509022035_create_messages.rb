class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :body

      #ngambil referensi dari create_conversation
      t.references :conversation, foreign_key: true

      #ngambil referensi dari create_user
      t.references :user, foreign_key: true 
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
