class CreateEnquires < ActiveRecord::Migration
  def change
    create_table :enquires do |t|
      t.string :full_name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
