class AddVideoembeddToHighlights < ActiveRecord::Migration
  def change
    add_column :highlights, :video_embed, :text
  end
end
