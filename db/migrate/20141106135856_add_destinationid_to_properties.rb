class AddDestinationidToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :destination_id, :integer
    add_index :properties, :destination_id
  end
end
