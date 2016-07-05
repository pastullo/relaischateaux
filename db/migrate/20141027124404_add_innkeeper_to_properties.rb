class AddInnkeeperToProperties < ActiveRecord::Migration
  def up
    add_attachment :properties, :innkeeper_tile
    add_column :properties, :innkeeper_body, :text
  end
  def down
    remove_attachment :properties, :innkeeper_tile
    remove_column :properties, :innkeeper_body
  end
end
