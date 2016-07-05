ActiveAdmin.register Property do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :location, :reviews_json, :hero, :hero_override, :sort_order, :price_conditions, :footer_featured, :innkeeper_body, :innkeeper_tile, :display_tile,
  :about_body, :about_tile, :lat, :lng, :zoom, :destination_id, :short_description, :tile,
  :video_mp4, :video_ogg, :review_shortcode, route_ids: [],
  translations_attributes: [:id, :locale, :name, :location, :reviews_json, :innkeeper_body, :about_body, :short_description, :innkeeper_video, :price_conditions]

  #
  # or
  #

form do |f|
  f.inputs do
    f.input :destination

    f.translated_inputs "Translated fields" do |t|
      t.input :name, label: 'Name', input_html: { rows: 1 }
      t.input :location, label: 'Location', input_html: { rows: 1 }
      t.input :short_description, label: 'Short Description', input_html: { rows: 4 }
      t.input :about_body, label: 'About Text', as: :wysihtml5, height: :medium
      t.input :innkeeper_body, label: 'Innkeeper Text', as: :wysihtml5, height: :medium
      t.input :innkeeper_video, label: 'Innkeeper Video', input_html: { rows: 3 }
      t.input :price_conditions, input_html: { rows: 1 }
      t.input :reviews_json, label: 'Reviews data', input_html: { rows: 2 }
    end
    

    f.inputs 'Fullscreen Video' do
    f.input :hero, :required => false, :as => :file, label: 'Fallback Image'
    f.input :hero_override, :required => false, :as => :file
    f.input :video_mp4, :required => false, :as => :file, label: 'MP4 Video'
    f.input :video_ogg, :required => false, :as => :file, label: 'OGG Video'
    end

    f.input :tile, :required => false, :as => :file, label: 'Listings Tile'

    f.input :about_tile,label: 'About background Picture', :required => false, :as => :file

    f.inputs 'Innkeeper' do 

      f.input :innkeeper_tile, :required => false, :as => :file, label: 'Innkeeper Picture'
      f.input :display_tile, label: 'Display innkeeper picture in lightbox?'
    end

    # f.input :review_shortcode
    f.inputs 'Maps' do
      f.input :lat, label: "Latitude"
      f.input :lng, label: "Longitude"
      f.input :zoom, label: "Zoom Level (1-12)"
    end

    f.input :sort_order

    f.input :footer_featured, label: "Show on footer links"

    f.input :routes, label: 'Recommended Routes', :as => :check_boxes

  end
  f.actions
 end


  index do 

    column :hero do |e|
      image_tag(e.hero.url(:small_thumb))
    end

    column :name

    column :destination

    column :sort_order

    column 'Preview' do |p|
      link_to 'preview', property_path(p.id), :target => "_blank"
    end


    actions
  end

filter :name
filter :location

end
