class PurgeExperiences < ActiveRecord::Migration
  def change
    remove_column   :experiences, :first_destination_name
    remove_column   :experiences, :first_destination_short_description
    remove_column   :experiences, :first_destination_long_description
    remove_column  :experiences, :first_destination_id
    remove_column   :experiences, :first_property_name
    remove_column   :experiences, :first_property_short_description
    remove_column   :experiences, :first_property_long_description
    remove_column  :experiences, :first_property_id
    remove_column   :experiences, :second_destination_name
    remove_column   :experiences, :second_destination_short_description
    remove_column   :experiences, :second_destination_long_description
    remove_column  :experiences, :second_destination_id
    remove_column   :experiences, :second_property_name
    remove_column   :experiences, :second_property_short_description
    remove_column   :experiences, :second_property_long_description
    remove_column  :experiences, :second_property_id
    remove_column   :experiences, :third_destination_name
    remove_column   :experiences, :third_destination_short_description
    remove_column   :experiences, :third_destination_long_description
    remove_column  :experiences, :third_destination_id
    remove_column   :experiences, :third_property_name
    remove_column   :experiences, :third_property_short_description
    remove_column   :experiences, :third_property_long_description
    remove_column  :experiences, :third_property_id
  end
end
