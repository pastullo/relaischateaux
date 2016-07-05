class AddDescriptionToRoutes < ActiveRecord::Migration
  def change
    add_column :routes, :short_description, :text
  end
end
