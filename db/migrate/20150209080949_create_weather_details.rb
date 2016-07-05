class CreateWeatherDetails < ActiveRecord::Migration
  def change
    create_table :weather_details do |t|
      t.integer :visitable_id
      t.string :visitable_type

      t.timestamps null: false
    end
    add_index :weather_details, :visitable_id
  end
end
