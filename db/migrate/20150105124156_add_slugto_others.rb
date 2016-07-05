class AddSlugtoOthers < ActiveRecord::Migration
  def change
    add_column :destinations, :slug, :string
    add_index :destinations, :slug, unique: true
    add_column :routes, :slug, :string
    add_index :routes, :slug, unique: true
    add_column :properties, :slug, :string
    add_index :properties, :slug, unique: true
  end
end
