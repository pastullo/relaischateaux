class AddFieldsToEnquires < ActiveRecord::Migration
  def change
    add_column :enquires, :newsletter, :boolean, :default => false
  end
end
