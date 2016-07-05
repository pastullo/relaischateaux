class Featurization < ActiveRecord::Base
  belongs_to :room
  belongs_to :room_feature
end
