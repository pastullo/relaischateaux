class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :location
      t.attachment :about_tile
      t.text :about_body

      t.timestamps
    end
  end
end
