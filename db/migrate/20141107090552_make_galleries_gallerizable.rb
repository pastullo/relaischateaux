class MakeGalleriesGallerizable < ActiveRecord::Migration
  def change
    remove_column :galleries, :property_id
    add_column :galleries, :gallerizable_id, :integer
    add_column :galleries, :gallerizable_type, :string

    add_index :galleries, [:gallerizable_id, :gallerizable_type]
  end
end
