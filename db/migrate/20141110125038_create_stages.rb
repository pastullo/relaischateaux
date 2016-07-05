class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.text :recap
      t.integer :destination_id
      t.integer :route_id
      t.integer :sort_order

      t.timestamps
    end
    add_index :stages, :destination_id
    add_index :stages, :route_id
  end
end
