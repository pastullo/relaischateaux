class Consultant < ActiveRecord::Base

  has_attached_file :image, :styles => PICTURE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  active_admin_translates :name, :job, :review, :review_by

  default_scope { order(:sort_order) }
end
