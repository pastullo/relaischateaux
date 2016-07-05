class AddOverridetoStages < ActiveRecord::Migration
  def change
    add_attachment :stages, :destination_hero
  end
end
