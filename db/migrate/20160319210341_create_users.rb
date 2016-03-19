class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :full_name
      t.float :weight
      t.float :height
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
