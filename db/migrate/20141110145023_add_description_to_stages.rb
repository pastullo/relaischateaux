class AddDescriptionToStages < ActiveRecord::Migration
  def change
    add_column :stages, :short_description, :text
    add_column :properties, :short_description, :text
  end
end
