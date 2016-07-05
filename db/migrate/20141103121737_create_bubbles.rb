class CreateBubbles < ActiveRecord::Migration
  def change
    create_table :bubbles do |t|
      t.string :title
      t.attachment :icon
      t.text :body
      t.integer :experience_id
      t.integer :pos_x
      t.integer :pos_y

      t.timestamps
    end
    add_index :bubbles, :experience_id
  end
end
