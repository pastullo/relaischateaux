class Bubble < ActiveRecord::Base
  belongs_to :experience

  active_admin_translates :title, :body

  default_scope { order(:sort_order) }
    
  has_attached_file :icon, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :icon, :content_type => /\Aimage\/.*\Z/
end
