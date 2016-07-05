class AddDescriptionToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :short_description, :text
  end
end
