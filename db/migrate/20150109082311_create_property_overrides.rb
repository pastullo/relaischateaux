class CreatePropertyOverrides < ActiveRecord::Migration
  def change
    create_table :property_overrides do |t|
      t.integer :property_id
      t.integer :stage_id

      t.timestamps
    end
    add_index :property_overrides, :property_id
    add_index :property_overrides, :stage_id
    
    add_attachment :property_overrides, :property_hero
  end
end
