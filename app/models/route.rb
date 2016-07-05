class Route < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :stages, dependent: :destroy
  has_many :destinations, -> { uniq }, through: :stages

  has_many :themes
  has_many :experiences, through: :themes

  active_admin_translates :name, :recap, :short_description

  has_attached_file :hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile, :content_type => /\Aimage\/.*\Z/

  default_scope { order(:sort_order) }

  def destination_names_list
    destinations.select(:name, :id).map { |i| i.name}
  end

end
