class AddSortOrderToConsultants < ActiveRecord::Migration
  def change
    add_column :consultants, :sort_order, :integer, :default => 10
  end
end
