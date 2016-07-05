class ChangedefaultforDatys < ActiveRecord::Migration
  def change
    change_column_default(:stages, :days, 1)
  end
end
