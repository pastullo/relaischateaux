class GlobalizeDestination < ActiveRecord::Migration
  def self.up
    Destination.create_translation_table!({
      :name => :string,
      :location => :text,
      :short_description => :text,
      :about_body => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Destination.drop_translation_table! :migrate_data => true
  end
end

# translates :name, :location, :short_description, :about_body