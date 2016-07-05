class AddCurrencyToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :currency, :string, :default => 'ZAR'
  end
end
