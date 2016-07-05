class CreateFeaturizations < ActiveRecord::Migration
  def change
    create_table :featurizations do |t|
      t.integer :room_feature_id
      t.integer :room_id

      t.timestamps
    end
    add_index :featurizations, :room_feature_id
    add_index :featurizations, :room_id
  end
end
