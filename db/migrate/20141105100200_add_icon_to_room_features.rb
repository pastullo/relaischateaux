class AddIconToRoomFeatures < ActiveRecord::Migration
  def change
    add_attachment :room_features, :icon
    add_column :rooms, :from_price, :decimal, :precision => 8, :scale => 2
    add_column :rooms, :size, :string
  end
end
