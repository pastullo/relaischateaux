class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.integer :property_id

      t.timestamps
    end
    add_index :galleries, :property_id
  end
end
