class Property < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :highlights, as: :highlightable
  has_many :galleries, as: :gallerizable
  has_many :weather_details, as: :visitable
  has_many :room_categories
  
  belongs_to :destination

  has_many :experience_stages
  has_many :experiences, -> { uniq }, through: :experience_stages

  has_many :suggestions
  has_many :routes, through: :suggestions

  active_admin_translates :name, :location, :reviews_json, :innkeeper_body, :about_body, :short_description, :innkeeper_video, :price_conditions
  
  default_scope { order(:sort_order) }

  has_attached_file :hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :hero_override, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero_override, :content_type => /\Aimage\/.*\Z/

  has_attached_file :tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :innkeeper_tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :innkeeper_tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :about_tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :about_tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :video_mp4
  validates_attachment_content_type :video_mp4, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_ogg
  validates_attachment_content_type :video_ogg, :content_type => /\Avideo\/.*\Z/

  def has_highlights?
    Highlight.exists? highlightable_type: 'Property', highlightable_id: self.id
  end

  def has_rooms?
    RoomCategory.exists? property_id: self.id
  end

  def has_reviews?
    # !self.review_shortcode.to_s.empty?
    !self.reviews_json.to_s.empty?
  end

  def review_url
    "http://api.relaischateaux.com/v1/apv456zc/reviews/#{self.review_shortcode},#{I18n.locale}.json"
  end

  def has_map?
    ((lat.present? and lng.present?) ? true : false)
  end
  
end
