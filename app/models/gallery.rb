class Gallery < ActiveRecord::Base
  belongs_to :gallerizable, polymorphic: true

  has_many :pictures

  active_admin_translates :name

  default_scope { order(:sort_order) }

  def extended_name
    "#{(gallerizable.present? ? gallerizable.name : '')} - #{name}"
  end
end
