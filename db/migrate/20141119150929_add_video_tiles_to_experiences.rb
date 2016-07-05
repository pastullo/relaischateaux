class AddVideoTilesToExperiences < ActiveRecord::Migration
  def change
    add_attachment :experiences, :video_tile_mp4
    add_attachment :experiences, :video_tile_ogg
  end
end
