class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.integer :property_id
      t.integer :route_id

      t.timestamps
    end
    add_index :suggestions, :property_id
    add_index :suggestions, :route_id
  end
end
