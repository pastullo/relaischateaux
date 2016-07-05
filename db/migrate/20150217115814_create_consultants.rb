class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.string :name
      t.string :job
      t.text :review
      t.string :review_by
      t.attachment :image

      t.timestamps
    end
  end
end
