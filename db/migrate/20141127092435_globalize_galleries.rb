class GlobalizeGalleries < ActiveRecord::Migration
  def self.up
    Gallery.create_translation_table!({
      :name => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Gallery.drop_translation_table! :migrate_data => true
  end
end
