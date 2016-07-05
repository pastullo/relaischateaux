class DestinationsController < ApplicationController
  
  after_action :track_clickpath, only: :show

  def show
    @destination = Destination.friendly.find(params[:id])

    redirect_to action: action_name, id: @destination.friendly_id, status: 301 unless @destination.friendly_id == params[:id]
    
    @gallery = @destination.galleries.first

    set_meta_tags({
      title: "#{@destination.name} | Relais & Châteaux",
      description: @destination.short_description,
      image: @destination.hero.url(:full), 
      url: destination_url(@destination.id)
    })


  end

  def index
    @destinations = Destination.all
    @count = Destination.all.count
    @counter = 0

    @filling_cards = {
      tablet: @count % 2, 
      desktop: ((@count % 3) == 0 ? 0 : (3 - (@count % 3)) )
    }
  end

  def show_about
    @destination = Destination.find(params[:id])
  end

  def show_properties
    @destination = Destination.friendly.find(params[:id])
  end
end
