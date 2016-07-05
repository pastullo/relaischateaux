class AddHeroToDestination < ActiveRecord::Migration
  def change
    add_attachment :destinations, :hero
  end
end
