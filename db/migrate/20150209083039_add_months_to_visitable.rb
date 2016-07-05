class AddMonthsToVisitable < ActiveRecord::Migration
  def change
    add_column :weather_details, :january_temperature, :integer
    add_column :weather_details, :january_icon_type, :string
    add_column :weather_details, :january_rain_mm, :integer
    add_column :weather_details, :january_color, :string

    add_column :weather_details, :february_temperature, :integer
    add_column :weather_details, :february_icon_type, :string
    add_column :weather_details, :february_rain_mm, :integer
    add_column :weather_details, :february_color, :string

    add_column :weather_details, :march_temperature, :integer
    add_column :weather_details, :march_icon_type, :string
    add_column :weather_details, :march_rain_mm, :integer
    add_column :weather_details, :march_color, :string

    add_column :weather_details, :april_temperature, :integer
    add_column :weather_details, :april_icon_type, :string
    add_column :weather_details, :april_rain_mm, :integer
    add_column :weather_details, :april_color, :string

    add_column :weather_details, :may_temperature, :integer
    add_column :weather_details, :may_icon_type, :string
    add_column :weather_details, :may_rain_mm, :integer
    add_column :weather_details, :may_color, :string

    add_column :weather_details, :june_temperature, :integer
    add_column :weather_details, :june_icon_type, :string
    add_column :weather_details, :june_rain_mm, :integer
    add_column :weather_details, :june_color, :string

    add_column :weather_details, :july_temperature, :integer
    add_column :weather_details, :july_icon_type, :string
    add_column :weather_details, :july_rain_mm, :integer
    add_column :weather_details, :july_color, :string

    add_column :weather_details, :august_temperature, :integer
    add_column :weather_details, :august_icon_type, :string
    add_column :weather_details, :august_rain_mm, :integer
    add_column :weather_details, :august_color, :string

    add_column :weather_details, :september_temperature, :integer
    add_column :weather_details, :september_icon_type, :string
    add_column :weather_details, :september_rain_mm, :integer
    add_column :weather_details, :september_color, :string

    add_column :weather_details, :october_temperature, :integer
    add_column :weather_details, :october_icon_type, :string
    add_column :weather_details, :october_rain_mm, :integer
    add_column :weather_details, :october_color, :string

    add_column :weather_details, :november_temperature, :integer
    add_column :weather_details, :november_icon_type, :string
    add_column :weather_details, :november_rain_mm, :integer
    add_column :weather_details, :november_color, :string

    add_column :weather_details, :december_temperature, :integer
    add_column :weather_details, :december_icon_type, :string
    add_column :weather_details, :december_rain_mm, :integer
    add_column :weather_details, :december_color, :string


  end
end
