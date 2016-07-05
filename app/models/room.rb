class Room < ActiveRecord::Base
  belongs_to :room_category
  has_many :room_pictures

  has_many :featurizations
  has_many :room_features, :through => :featurizations

  active_admin_translates :name, :description, :price_conditions

  accepts_nested_attributes_for :room_features
  accepts_nested_attributes_for :featurizations



  def extended_name
    if room_category.present? and room_category.property.present?
    "#{room_category.property.name} - #{room_category.name} - #{name}"
    else
      "-"
    end
  end

  def thumbnail
    room_pictures.any? ? room_pictures.order('sort_order').first.image.url(:medium) : ''
  end
end
