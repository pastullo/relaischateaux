class Highlight < ActiveRecord::Base

  belongs_to :highlightable, polymorphic: true

  default_scope { order(:sort_order) }

  active_admin_translates :title, :body

  has_attached_file :tile, :styles => TILE_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :tile, :content_type => /\Aimage\/.*\Z/

  has_attached_file :hero, :styles => HERO_SIZES, :convert_options => CONVERT_OPTIONS, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :hero, :content_type => /\Aimage\/.*\Z/

  has_attached_file :video_tile_mp4
  validates_attachment_content_type :video_tile_mp4, :content_type => /\Avideo\/.*\Z/

  has_attached_file :video_tile_ogg
  validates_attachment_content_type :video_tile_ogg, :content_type => /\Avideo\/.*\Z/
end
