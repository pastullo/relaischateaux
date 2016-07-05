class AddVideoToHighlights < ActiveRecord::Migration
  def change
    add_attachment :highlights, :video_tile_mp4
    add_attachment :highlights, :video_tile_ogg
  end
end
