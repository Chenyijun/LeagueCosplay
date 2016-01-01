class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :contactUrl
      t.string :email
      t.string :password
      t.string :role
      t.string :photos

      t.timestamps
    end
  end
end
