class ExperiencesController < ApplicationController
  
  after_action :track_clickpath, only: :show
  
  def wall
    
    @experiences = Array.new
    experiences_2 = Array.new #blocks for second tiles

    Experience.all.each do |e|
      @experiences << hashify_experience(e)
      experiences_2 << hashify_experience(e, true)
    end


    @experiences.concat(experiences_2)


  end

  def show
    @experience = Experience.friendly.find(params[:id])

    redirect_to action: action_name, id: @experience.friendly_id, status: 301 unless @experience.friendly_id == params[:id]

    set_meta_tags({
      title: "#{@experience.title} | Relais & Châteaux",
      description: @experience.short_description,
      image: @experience.hero.url(:full), 
      url: experience_url(@experience.id)
    })

    @stages = @experience.experience_stages
    @stage_counter = @stages.size
    @bubbles_total = @experience.bubbles.size

  end

  def more
    @stage = ExperienceStage.find(params[:stage_id])

    # if params[:type] == 'destination'
    #   @path = destination_path(@stage.destination_id)
    # elsif params[:type] == 'property'
    #   @path = property_path(@stage.property_id)
    # end
  end

  def index
    @experiences = Experience.all
    @count = Experience.all.count
    @counter = 0

    @filling_cards = {
      tablet: @count % 2, 
      # desktop: (3 - (@count % 3))
      desktop: ((@count % 3) == 0 ? 0 : (3 - (@count % 3)) )
    }

    # set_meta_tags({
    #   title: I18n.t('seo.title.experiences'),
    #   description: I18n.t('seo.description.experiences'),
    #   url: root_url
    # })

  end


  private 
  
  def hashify_experience(e, second = false)
      tmp = if(second)
        {
          blocksize: e.second_blocksize,
          hero: (e.tile_2.present? ? e.tile_2.url(:wide) : (e.hero_2.present? ? e.hero_2.url(:large) : nil) ),
          video_tile_mp4: (e.video_tile_mp4_2.present? ? e.video_tile_mp4_2.url : nil),
          video_tile_ogg: (e.video_tile_ogg_2.present? ? e.video_tile_ogg_2.url : nil),
          second: true
        }
      else
        {
          blocksize: e.blocksize,
          hero: (e.tile.present? ? e.tile.url(:wide) : (e.hero.present? ? e.hero.url(:large) : nil) ),
          video_tile_mp4: (e.video_tile_mp4.present? ? e.video_tile_mp4.url : nil),
          video_tile_ogg: (e.video_tile_ogg.present? ? e.video_tile_ogg.url : nil),
          second: false
        }
      end
      return {
        id: e.id,
        title: e.title,
        caption: nil,
        color: e.color,
        half_height: e.half_height,
        slug: e.slug
      }.merge(tmp)
  end
end
