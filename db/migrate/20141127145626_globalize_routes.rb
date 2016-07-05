class GlobalizeRoutes < ActiveRecord::Migration
  def self.up
    Route.create_translation_table!({
      :name => :text,
      :recap => :text,
      :short_description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Route.drop_translation_table! :migrate_data => true
  end
end
