class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :route_id
      t.integer :experience_id

      t.timestamps
    end
    add_index :themes, :route_id
    add_index :themes, :experience_id
  end
end
