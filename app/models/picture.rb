class Picture < ActiveRecord::Base
  belongs_to :gallery

  default_scope { order(:sort_order) }

  has_attached_file :image, :styles => PICTURE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
