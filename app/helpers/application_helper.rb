module ApplicationHelper

  def active_class(controller)
    if( (controller_name == controller and action_name == 'index') )
      " class=\"active\"".html_safe  
    end
  end

  def title(page_title)
    content_for :title, page_title.to_s
  end

  def is_homepage?
    if action_name == 'wall' and controller_name == 'experiences'
      true
    else
      false
    end
  end

  def meta_tags(tags)
    tags.each do |k,v|
      if k == :image
        @meta_tags[k] = URI.join(request.url, v)
      else
        @meta_tags[k] = v
      end
    end
  end

  def listing_filler(filling_cards)
      
      classes = Array.new
      while filling_cards.values.sum > 0
        
        visibility_classes = Array.new
        if filling_cards[:tablet] > 0
          visibility_classes << 'visible-sm-block'
          filling_cards[:tablet] -= 1
        else
          visibility_classes << 'hidden-sm'
        end

        if filling_cards[:desktop] > 0
          visibility_classes << 'visible-md-block visible-lg-block'
          filling_cards[:desktop] -= 1
        else
          visibility_classes << 'hidden-md hidden-lg'
        end

      classes << visibility_classes.join(' ')
      end

      counter = 0
      hash = {}
      classes.each do |c|
        hash[FILLER_CARDS[counter]] = c
        counter += 1
      end

      hash
    
  end

end
