class AddMapsToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :destinations, :lng, :decimal, {:precision=>10, :scale=>6}
    add_column :destinations, :zoom, :integer, :default => 6
  end
end
