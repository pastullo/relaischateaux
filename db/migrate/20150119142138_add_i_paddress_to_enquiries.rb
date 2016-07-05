class AddIPaddressToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquires, :ip_address, :string
  end
end
