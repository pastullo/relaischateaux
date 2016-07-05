class ExperienceStage < ActiveRecord::Base

  belongs_to :experience
  
  belongs_to :destination
  belongs_to :property
  
  default_scope { order(:sort_order) }

  active_admin_translates :destination_name, :destination_short_description, :destination_long_description, :property_name, :property_short_description, :property_long_description

  has_attached_file :property_hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :property_hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :destination_hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :destination_hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :lightbox_hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :lightbox_hero, :content_type => /\Aimage\/.*\Z/

end
