class AddVideosToDestinations < ActiveRecord::Migration
  def change
    add_attachment :destinations, :video_mp4
    add_attachment :destinations, :video_ogg
  end
end
