class WeatherDetail < ActiveRecord::Base
  belongs_to :visitable, polymorphic: true

  active_admin_translates :general_overview, :best_time, :high_season, :low_season, :best_weather, :worst_weather
end
