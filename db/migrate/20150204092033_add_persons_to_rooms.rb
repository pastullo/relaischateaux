class AddPersonsToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :persons, :string
  end
end
