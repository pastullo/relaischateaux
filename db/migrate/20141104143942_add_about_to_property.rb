class AddAboutToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :about_body, :text
    add_attachment :properties, :about_tile
  end
end
