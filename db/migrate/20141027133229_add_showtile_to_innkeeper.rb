class AddShowtileToInnkeeper < ActiveRecord::Migration
  def change
    add_column :properties, :display_tile, :boolean, :default => false
  end
end
