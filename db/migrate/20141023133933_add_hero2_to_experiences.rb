class AddHero2ToExperiences < ActiveRecord::Migration
  def self.up
    add_attachment :experiences, :hero_2
  end

  def self.down
    remove_attachment :experiences, :hero_2
  end
end
