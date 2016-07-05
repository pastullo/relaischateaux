class RoomCategory < ActiveRecord::Base
  belongs_to :property
  has_many :rooms

  active_admin_translates :name

  def extended_name
    "#{property.name} - #{name}" if property.present?
  end


end
