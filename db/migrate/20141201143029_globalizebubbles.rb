class Globalizebubbles < ActiveRecord::Migration
  def self.up
    Bubble.create_translation_table!({
      :title => :string,
      :body => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Bubble.drop_translation_table! :migrate_data => true
  end
end
