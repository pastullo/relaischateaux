class ConvertHighlightsToPolymorphic < ActiveRecord::Migration
  def change
    remove_column :highlights, :property_id
    add_column :highlights, :highlightable_id, :integer
    add_column :highlights, :highlightable_type, :string

    add_index :highlights, [:highlightable_id, :highlightable_type]
  end
end
