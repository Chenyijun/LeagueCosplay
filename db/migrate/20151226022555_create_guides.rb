class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.string :type
      t.string :creator
      t.string :creator_link
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :active
      t.string :link
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
