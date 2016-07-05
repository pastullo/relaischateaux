class CreateExperienceStages < ActiveRecord::Migration
  def change
    create_table :experience_stages do |t|
      t.integer :experience_id
      t.integer :destination_id
      t.integer :property_id
      t.integer :sort_order, :default => 99
      t.text :destination_name
      t.text :destination_short_description
      t.text :destination_long_description
      t.text :property_name
      t.text :property_short_description
      t.text :property_long_description

      t.timestamps
    end
    add_index :experience_stages, :experience_id
    add_index :experience_stages, :destination_id
    add_index :experience_stages, :property_id
  end
end
