class PropertyOverride < ActiveRecord::Base
  belongs_to :stage
  belongs_to :property

  has_attached_file :property_hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :property_hero, :content_type => /\Aimage\/.*\Z/
end
