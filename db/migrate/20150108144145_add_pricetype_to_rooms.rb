class AddPricetypeToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :price_type, :string
  end
end
