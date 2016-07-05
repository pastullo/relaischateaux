class AddFooterfeaturedtoshit < ActiveRecord::Migration
  def change
    add_column :experiences, :footer_featured, :boolean, :default => false
    add_column :destinations, :footer_featured, :boolean, :default => false
    add_column :properties, :footer_featured, :boolean, :default => false
    add_column :routes, :footer_featured, :boolean, :default => false
  end
end
