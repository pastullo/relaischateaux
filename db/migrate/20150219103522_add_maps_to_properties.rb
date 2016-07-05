class AddMapsToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :properties, :lng, :decimal, {:precision=>10, :scale=>6}
    add_column :properties, :zoom, :integer, :default => 6
  end
end
