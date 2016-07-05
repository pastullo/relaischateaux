class AddSortorderToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :sort_order, :integer, :default => 99
    add_column :properties, :sort_order, :integer, :default => 99
    add_column :destinations, :sort_order, :integer, :default => 99
  end
end
