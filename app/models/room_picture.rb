class RoomPicture < ActiveRecord::Base
  belongs_to :room

  has_attached_file :image, :styles => ROOM_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
