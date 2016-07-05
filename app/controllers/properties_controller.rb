class PropertiesController < ApplicationController
  
  after_action :track_clickpath, only: :show
  
  def show
    @property = Property.friendly.find(params[:id])

    redirect_to action: action_name, id: @property.friendly_id, status: 301 unless @property.friendly_id == params[:id]
    
    set_meta_tags({
      title: "#{@property.name} | Relais & Châteaux",
      description: @property.short_description,
      image: @property.hero.url(:full), 
      url: property_url(@property.id)
    })
  end

  def index
    @properties = Property.all
    @count = Property.all.count
    @counter = 0

    @filling_cards = {
      tablet: @count % 2, 
      desktop: ((@count % 3) == 0 ? 0 : (3 - (@count % 3)) )
    }

  end

  def show_innkeeper
    @property = Property.friendly.find(params[:id])
  end

  def show_about
    @property = Property.find(params[:id])
  end

end
