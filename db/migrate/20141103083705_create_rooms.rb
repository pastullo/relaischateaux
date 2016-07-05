class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :room_category_id

      t.timestamps
    end
    add_index :rooms, :room_category_id
  end
end
