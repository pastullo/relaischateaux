module PropertiesHelper

  def gallery_thumb gallery
    if gallery.pictures.first.present?
      image_tag( gallery.pictures.first.image.url(:thumb_small) )
    end

    
  end
end
