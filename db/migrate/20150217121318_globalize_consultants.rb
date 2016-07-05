class GlobalizeConsultants < ActiveRecord::Migration
  def up
    Consultant.create_translation_table! :name => :string, :job => :string, :review => :text, :review_by => :string
  end
  def down
    Consultant.drop_translation_table!
  end
end
