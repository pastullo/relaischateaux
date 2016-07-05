class AddInfoToHighlights < ActiveRecord::Migration
  def change
    add_column :highlights, :sort_order, :integer, :default => 99
    add_attachment :highlights, :hero
  end
end
