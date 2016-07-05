class AddmoreFieldsToEnquires < ActiveRecord::Migration
  def change
    add_column :enquires, :stay_duration, :string
    add_column :enquires, :adults, :integer
    add_column :enquires, :children, :integer
    add_column :enquires, :children_ages, :text
    add_column :enquires, :arrival_date, :string
  end
end


# adults numeric

# children numeric

# children_ages csv