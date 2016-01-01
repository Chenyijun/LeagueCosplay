class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :champion
      t.string :name
      t.string :type
      t.string :hair_length
      t.string :hair_color
      t.string :armor
      t.string :gender
      t.string :faction
      t.string :race
      t.string :difficulty
      t.boolean :wings

      t.timestamps
    end
  end
end
