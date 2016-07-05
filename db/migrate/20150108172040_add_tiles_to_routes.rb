class AddTilesToRoutes < ActiveRecord::Migration
  def change
    add_attachment :routes, :tile
  end
end
