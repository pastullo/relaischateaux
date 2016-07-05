class AddattachmenttoExperienceStages < ActiveRecord::Migration
  def self.up
    add_attachment :experience_stages, :property_hero
    add_attachment :experience_stages, :destination_hero
  end

  def self.down
    remove_attachment :experience_stages, :property_hero
    remove_attachment :experience_stages, :destination_hero
  end
end
