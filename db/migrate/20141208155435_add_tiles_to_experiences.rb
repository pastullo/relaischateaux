class AddTilesToExperiences < ActiveRecord::Migration
  def change
    add_attachment :experiences, :tile
    add_attachment :experiences, :tile_2
  end
end
