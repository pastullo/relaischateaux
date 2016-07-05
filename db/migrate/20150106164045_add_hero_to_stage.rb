class AddHeroToStage < ActiveRecord::Migration
  def change
    add_attachment :experience_stages, :lightbox_hero
  end
end
