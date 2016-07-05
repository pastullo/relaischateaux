class Suggestion < ActiveRecord::Base
  belongs_to :route
  belongs_to :property
end
