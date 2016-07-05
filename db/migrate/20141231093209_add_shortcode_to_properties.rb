class AddShortcodeToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :review_shortcode, :string
  end
end
