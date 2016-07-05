class AddPropertyTextToDestinations < ActiveRecord::Migration

  def up
    add_column :destinations, :properties_text, :text
    Destination.add_translation_fields! properties_text: :text
  end

  def down
    remove_column :destinations, :properties_text
    remove_column :destinations_translations, :properties_text
  end
end
