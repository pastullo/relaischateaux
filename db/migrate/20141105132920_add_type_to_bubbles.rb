class AddTypeToBubbles < ActiveRecord::Migration
  def change
    add_column :bubbles, :icon_type, :string
  end
end
