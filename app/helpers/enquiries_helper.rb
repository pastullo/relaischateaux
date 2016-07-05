module EnquiriesHelper
  def form_title 
    case controller_name
    when 'properties'
      if action_name == 'show'
        I18n.t('form_title.properties.show', name: @property.name)
      elsif action_name == 'index'
        I18n.t('form_title.properties.index')
      end
    when 'destinations'
      if action_name == 'show'
        I18n.t('form_title.destinations.show', name: @destination.name)
      elsif action_name == 'index'
        I18n.t('form_title.destinations.index')
      end
    when 'routes'
      if action_name == 'show'
        I18n.t('form_title.routes.show')
      elsif action_name == 'index'
        I18n.t('form_title.routes.index')
      end
    when 'experiences'
      if action_name == 'show'
        I18n.t('form_title.experiences.show', name: @experience.title)
      elsif action_name == 'index' or action_name == 'wall'
        I18n.t('form_title.experiences.index')
      end
    else
      I18n.t('start_your_journey')
    end

  end

  def show_instructional_overlay?
    unless cookies[:instructional_overlay].present?
      cookies[:instructional_overlay] = {
        value: true, 
        expires: 3.months.from_now
      }
      return true
    else
      return false
    end

  end

end
