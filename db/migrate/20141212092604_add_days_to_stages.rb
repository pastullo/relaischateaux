class AddDaysToStages < ActiveRecord::Migration
  def change
    add_column :stages, :days, :integer
  end
end
