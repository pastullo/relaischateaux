class AddBlockSizeToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :second_blocksize, :integer, :default => 1
  end
end
