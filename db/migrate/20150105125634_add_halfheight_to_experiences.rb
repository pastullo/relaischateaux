class AddHalfheightToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :half_height, :boolean, :default => false
  end
end
