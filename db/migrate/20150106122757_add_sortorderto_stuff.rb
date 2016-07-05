class AddSortordertoStuff < ActiveRecord::Migration
  def change
    add_column :bubbles, :sort_order, :integer, :default => 10
    add_column :galleries, :sort_order, :integer, :default => 10
  end
end
