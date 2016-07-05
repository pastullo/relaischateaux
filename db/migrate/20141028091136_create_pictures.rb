class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :gallery_id
      t.attachment :image

      t.timestamps
    end
    add_index :pictures, :gallery_id
  end
end
