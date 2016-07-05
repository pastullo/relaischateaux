class RoomFeature < ActiveRecord::Base
  has_many :featurizations
  has_many :rooms, :through => :featurizations

  accepts_nested_attributes_for :rooms

  active_admin_translates :name

  has_attached_file :icon, :styles => BUBBLE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :icon, :content_type => /\Aimage\/.*\Z/
end
