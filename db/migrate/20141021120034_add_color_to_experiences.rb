class AddColorToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :color, :string
  end
end
