class AddHeroToExperiences < ActiveRecord::Migration
  def self.up
    add_attachment :experiences, :hero
  end

  def self.down
    remove_attachment :experiences, :hero
  end
end
