class AddSequentialIdToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquires, :sequential_id, :integer
  end
end
