class RemoveImageFromRoom < ActiveRecord::Migration
  def change
    remove_attachment :rooms, :image
  end
end
