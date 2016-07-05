class RoutesController < ApplicationController
  
  after_action :track_clickpath, only: :show
  
  def show
    @route = Route.friendly.find(params[:id])

    redirect_to action: action_name, id: @route.friendly_id, status: 301 unless @route.friendly_id == params[:id]

    set_meta_tags({
      title: "#{@route.name} | Relais & Châteaux",
      description: @route.short_description,
      image: @route.hero.url(:full), 
      url: route_url(@route.id)
    })

    @stage_count = @route.stages.size
    @counter = 1
    @properties_counter = 0
    @property_total = 0
    @days_total = 0



  end

  def index
    @routes = Route.all

    @count = @routes.count
    @counter = 0

    @filling_cards = {
      tablet: @count % 2, 
      desktop: ((@count % 3) == 0 ? 0 : (3 - (@count % 3)) )
    }

  end
end
