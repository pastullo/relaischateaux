class AddVideoToProperties < ActiveRecord::Migration
  def up
    add_column :properties, :innkeeper_video, :text
    Property.add_translation_fields! innkeeper_video: :text
  end
  def down
    remove_column :properties, :innkeeper_video
    remove_column :property_translations, :innkeeper_video
  end
end
