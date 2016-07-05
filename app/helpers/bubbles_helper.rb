module BubblesHelper
  def icon icon_type
    if icon_type == 'video'
      'video-camera'
    elsif icon_type == 'image'
      'camera'        
    elsif icon_type == 'audio'
      'microphone'
    else
      'info'
    end
  end
end
