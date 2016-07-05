class GlobalizeStages < ActiveRecord::Migration

  def self.up
    Stage.create_translation_table!({
      :recap => :text,
      :short_description => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Stage.drop_translation_table! :migrate_data => true
  end

end
