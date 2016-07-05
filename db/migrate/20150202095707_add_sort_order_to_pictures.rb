class AddSortOrderToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :sort_order, :integer, :default => 99
  end
end
