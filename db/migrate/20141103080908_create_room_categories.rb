class CreateRoomCategories < ActiveRecord::Migration
  def change
    create_table :room_categories do |t|
      t.string :name
      t.integer :sort_order
      t.integer :property_id

      t.timestamps
    end
    add_index :room_categories, :property_id
  end
end
