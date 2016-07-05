class RemoveConditionsfromRooms < ActiveRecord::Migration
  def up
    add_column :properties, :price_conditions, :text
    Property.add_translation_fields! price_conditions: :text
  end

  def down
    remove_column :properties, :price_conditions
    remove_column :properties_translations, :price_conditions
  end
end
