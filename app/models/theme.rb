class Theme < ActiveRecord::Base
  belongs_to :route
  belongs_to :experience
end
