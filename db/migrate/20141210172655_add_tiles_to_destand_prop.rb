class AddTilesToDestandProp < ActiveRecord::Migration
  def change
    add_attachment :destinations, :tile
    add_attachment :properties, :tile    
  end
end
