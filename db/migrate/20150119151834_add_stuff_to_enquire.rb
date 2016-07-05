class AddStuffToEnquire < ActiveRecord::Migration
  def change
    add_column :enquires, :clickpath, :text
    add_column :enquires, :entry_page, :text
    add_column :enquires, :referrer, :text
  end
end
