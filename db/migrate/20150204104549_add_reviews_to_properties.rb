class AddReviewsToProperties < ActiveRecord::Migration
  def up
    add_column :properties, :reviews_json, :text
    Property.add_translation_fields! reviews_json: :text
  end

  def down
    remove_column :properties, :reviews_json
    remove_column :property_translations, :reviews_json
  end
end
