class AddDefaultToExperiences < ActiveRecord::Migration
  def change
    change_column_default(:experiences, :sort_order, 99)
  end
end
