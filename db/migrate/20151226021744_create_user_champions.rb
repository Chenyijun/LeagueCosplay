class CreateUserChampions < ActiveRecord::Migration
  def change
    create_table :user_champions do |t|
      t.integer :user_id
      t.integer :skin_id
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
