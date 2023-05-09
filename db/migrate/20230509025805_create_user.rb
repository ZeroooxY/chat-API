class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :image
      t.string :password_digest
#buat user
      t.timestamps
    end
  end
end
