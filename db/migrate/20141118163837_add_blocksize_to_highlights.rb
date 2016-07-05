class AddBlocksizeToHighlights < ActiveRecord::Migration
  def change
    add_column :highlights, :block_size, :integer, :default => 1
  end
end
