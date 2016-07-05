class AddPriceConditionsToRooms < ActiveRecord::Migration
  def up
    add_column :rooms, :price_conditions, :text
    Room.add_translation_fields! price_conditions: :text
  end

  def down
    remove_column :rooms, :price_conditions
    remove_column :rooms_translations, :price_conditions
  end
end
