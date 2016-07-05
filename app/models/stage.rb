class Stage < ActiveRecord::Base
  belongs_to :route
  belongs_to :destination

  has_many :property_overrides

  active_admin_translates :short_description, :recap

  default_scope { order(:sort_order) }

  has_attached_file :destination_hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :destination_hero, :content_type => /\Aimage\/.*\Z/
  
  def name_with_route
    "#{self.route.name} - #{self.destination.name}"
  end
end
