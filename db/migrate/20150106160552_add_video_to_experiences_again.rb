class AddVideoToExperiencesAgain < ActiveRecord::Migration
  def change
    add_attachment :experiences, :video_tile_ogg_2
    add_attachment :experiences, :video_tile_mp4_2
  end
end
