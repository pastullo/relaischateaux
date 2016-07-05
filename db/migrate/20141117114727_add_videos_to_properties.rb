class AddVideosToProperties < ActiveRecord::Migration
  def change
    add_attachment :properties, :video_mp4
    add_attachment :properties, :video_ogg
    add_column :properties, :reviews_url, :text
  end
end
