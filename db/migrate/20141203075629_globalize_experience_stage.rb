class GlobalizeExperienceStage < ActiveRecord::Migration
  def self.up
    ExperienceStage.create_translation_table!({
      :destination_name => :text,
      :destination_short_description => :text,
      :destination_long_description => :text,
      :property_name => :text,
      :property_short_description => :text,
      :property_long_description => :text

    }, {
      :migrate_data => true
    })
  end

  def self.down
    ExperienceStage.drop_translation_table! :migrate_data => true
  end
end