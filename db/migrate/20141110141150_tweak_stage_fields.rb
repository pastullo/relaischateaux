class TweakStageFields < ActiveRecord::Migration
  def up
    change_column(:routes, :recap, :text)
    add_column :destinations, :short_description, :text
  end
  def down
    change_column(:routes, :recap, :string)
    remove_column :destinations, :short_description
  end

end
