class CreateRoomPictures < ActiveRecord::Migration
  def change
    create_table :room_pictures do |t|
      t.string :room_id
      t.attachment :image
      t.integer :sort_order

      t.timestamps
    end
    add_index :room_pictures, :room_id
  end
end
