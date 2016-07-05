class GlobalizeProperties < ActiveRecord::Migration
  def self.up
    Property.create_translation_table!({
      :name => :text,
      :location => :text, 
      :innkeeper_body => :text, 
      :about_body => :text,
      :short_description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Property.drop_translation_table! :migrate_data => true
  end
end
