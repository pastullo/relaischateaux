class AddHeroToProperties < ActiveRecord::Migration
  def self.up
    add_attachment :properties, :hero
  end

  def self.down
    remove_attachment :properties, :hero
  end
end
