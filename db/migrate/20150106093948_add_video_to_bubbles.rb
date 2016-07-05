class AddVideoToBubbles < ActiveRecord::Migration
  def change
    add_column :bubbles, :video, :text
  end
end
