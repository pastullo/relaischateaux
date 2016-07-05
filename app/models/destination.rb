class Destination < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_many :highlights, as: :highlightable
  has_many :galleries, as: :gallerizable
  has_many :weather_details, as: :visitable
  has_many :properties

  has_many :stages
  has_many :routes, -> { uniq }, through: :stages

  has_many :experience_stages
  has_many :experiences, -> { uniq }, through: :experience_stages

  active_admin_translates :name, :location, :properties_text, :short_description, :about_body, :fallbacks_for_empty_translations => true

  default_scope { order(:sort_order) }

  has_attached_file :hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :about_tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :about_tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :video_mp4
  validates_attachment_content_type :video_mp4, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_ogg
  validates_attachment_content_type :video_ogg, :content_type => ['video/ogg','application/ogg']

  def property_names_list
    properties.select(:name, :id).map { |i| i.name}

  end

  def has_map?
    ((lat.present? and lng.present?) ? true : false)
  end
end
