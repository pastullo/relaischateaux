class AddOverrideToProperties < ActiveRecord::Migration
  def change
    add_attachment :properties, :hero_override
  end
end
