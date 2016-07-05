class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.attachment :hero
      t.string :recap

      t.timestamps
    end
  end
end
