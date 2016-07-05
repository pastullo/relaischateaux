class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.integer :blocksize, :default => 1

      t.timestamps
    end
  end
end
