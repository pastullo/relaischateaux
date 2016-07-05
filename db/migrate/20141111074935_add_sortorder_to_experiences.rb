class AddSortorderToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :sort_order, :integer
  end
end
