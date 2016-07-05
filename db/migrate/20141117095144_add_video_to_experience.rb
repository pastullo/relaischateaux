class AddVideoToExperience < ActiveRecord::Migration
  def change
    add_attachment :experiences, :video_mp4
    add_attachment :experiences, :video_ogg
  end
end
