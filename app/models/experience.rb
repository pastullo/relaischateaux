class Experience < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :bubbles

  has_many :themes
  has_many :routes, through: :themes

  has_many :experience_stages
  has_many :destinations, -> { uniq }, through: :experience_stages
  has_many :properties, -> { uniq }, through: :experience_stages

  default_scope { order(:sort_order) }

  accepts_nested_attributes_for :routes
  accepts_nested_attributes_for :themes

  active_admin_translates :title, :short_description

  has_attached_file :hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :hero_2, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero_2, :content_type => /\Aimage\/.*\Z/

  has_attached_file :tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :tile_2, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile_2, :content_type => /\Aimage\/.*\Z/

  has_attached_file :video_mp4
  validates_attachment_content_type :video_mp4, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_ogg
  validates_attachment_content_type :video_ogg, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_tile_mp4
  validates_attachment_content_type :video_tile_mp4, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_tile_ogg
  validates_attachment_content_type :video_tile_ogg, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_tile_mp4_2
  validates_attachment_content_type :video_tile_mp4_2, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_tile_ogg_2
  validates_attachment_content_type :video_tile_ogg_2, :content_type => /\Avideo\/.*\Z/

  def destination_names_list
    destinations.select(:name, :id).map { |i| i.name}
  end

end
