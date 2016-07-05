class AddSortorderToPages < ActiveRecord::Migration
  def change
    add_column :pages, :sort_order, :integer, :default => 99
  end
end
