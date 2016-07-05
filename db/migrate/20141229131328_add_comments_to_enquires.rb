class AddCommentsToEnquires < ActiveRecord::Migration
  def change
    add_column :enquires, :comments, :text
  end
end
