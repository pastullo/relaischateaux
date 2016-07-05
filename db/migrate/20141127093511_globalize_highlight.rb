class GlobalizeHighlight < ActiveRecord::Migration
  def self.up
    Highlight.create_translation_table!({
      :title => :string,
      :body => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Highlight.drop_translation_table! :migrate_data => true
  end
end
