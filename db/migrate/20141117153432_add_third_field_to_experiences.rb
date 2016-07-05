class AddThirdFieldToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :third_destination_name, :string
    add_column :experiences, :third_destination_short_description, :text
    add_column :experiences, :third_destination_long_description, :text
    add_column :experiences, :third_destination_id, :integer

    add_column :experiences, :third_property_name, :string
    add_column :experiences, :third_property_short_description, :text
    add_column :experiences, :third_property_long_description, :text
    add_column :experiences, :third_property_id, :integer


    # INDEXES
    add_index :experiences, :third_property_id
    add_index :experiences, :third_destination_id
  end
end
