class AddLocaleToEnquires < ActiveRecord::Migration
  def change
    add_column :enquires, :locale, :string
  end
end
