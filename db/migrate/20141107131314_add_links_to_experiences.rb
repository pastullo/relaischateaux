class AddLinksToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :first_destination_name, :string
    add_column :experiences, :first_destination_short_description, :text
    add_column :experiences, :first_destination_long_description, :text
    add_column :experiences, :first_destination_id, :integer

    add_column :experiences, :second_destination_name, :string
    add_column :experiences, :second_destination_short_description, :text
    add_column :experiences, :second_destination_long_description, :text
    add_column :experiences, :second_destination_id, :integer

    add_column :experiences, :first_property_name, :string
    add_column :experiences, :first_property_short_description, :text
    add_column :experiences, :first_property_long_description, :text
    add_column :experiences, :first_property_id, :integer

    add_column :experiences, :second_property_name, :string
    add_column :experiences, :second_property_short_description, :text
    add_column :experiences, :second_property_long_description, :text
    add_column :experiences, :second_property_id, :integer


    # INDEXES
    add_index :experiences, :first_property_id
    add_index :experiences, :second_property_id
    add_index :experiences, :first_destination_id
    add_index :experiences, :second_destination_id
  end
end
