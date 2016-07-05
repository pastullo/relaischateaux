class GlobalizeVisitable < ActiveRecord::Migration
  def up
    add_column :weather_details, :general_overview, :text
    # WeatherDetail.add_translation_fields! general_overview: :text

    add_column :weather_details, :best_time, :text
    # WeatherDetail.add_translation_fields! best_time: :text

    add_column :weather_details, :high_season, :text
    # WeatherDetail.add_translation_fields! high_season: :text

    add_column :weather_details, :low_season, :text
    # WeatherDetail.add_translation_fields! low_season: :text

    add_column :weather_details, :best_weather, :text
    # WeatherDetail.add_translation_fields! best_weather: :text

    add_column :weather_details, :worst_weather, :text
    # WeatherDetail.add_translation_fields! worst_weather: :text

    WeatherDetail.create_translation_table! :general_overview => :text, :best_time => :text, :high_season => :text, :low_season => :text, :best_weather => :text, :worst_weather => :text
  end

  def down
    remove_column :weather_details, :general_overview
    remove_column :weather_details, :best_time
    remove_column :weather_details, :high_season
    remove_column :weather_details, :low_season
    remove_column :weather_details, :best_weather
    remove_column :weather_details, :worst_weather

    WeatherDetail.drop_translation_table!
  end
end
