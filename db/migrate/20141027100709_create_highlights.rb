class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :title
      t.text :body
      t.integer :property_id
      t.attachment :tile

      t.timestamps
    end
    add_index :highlights, :property_id
  end
end
