class GlobalizeRooms < ActiveRecord::Migration
  def self.up
    Room.create_translation_table!({
      :name => :text,
      :description => :text
    }, {
      :migrate_data => true
    })
    RoomFeature.create_translation_table!({
      :name => :text
    }, {
      :migrate_data => true
    })
    RoomCategory.create_translation_table!({
      :name => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Room.drop_translation_table! :migrate_data => true
    RoomFeature.drop_translation_table! :migrate_data => true
    RoomCategory.drop_translation_table! :migrate_data => true
  end
end
