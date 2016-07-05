ActiveAdmin.register Experience do

  menu :parent => 'Experiences'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :blocksize, :color, :short_description, :half_height, :footer_featured, :hero, :hero_2, :tile, :tile_2,
  :sort_order, :video_ogg, :video_mp4, :second_blocksize, :video_tile_mp4, :video_tile_ogg, :video_tile_mp4_2, :video_tile_ogg_2, route_ids: [],
  translations_attributes: [:id, :locale, :title, :short_description]



  form do |f|
    f.inputs do
      
      f.translated_inputs "Translated fields" do |t|
        t.input :title, input_html: { rows: 1 }
        t.input :short_description, label: 'Short Description', input_html: { rows: 3 }
      end
      
      f.input :color, label: 'Background Tile Color'

      f.input :tile, :required => false, :as => :file, label: 'Tile #1 Background'
      f.input :blocksize, label: 'Tile #1 Size (1 to 3)'

      f.input :tile_2, :required => false, :as => :file, label: 'Tile #2 Background'
      f.input :second_blocksize, label: 'Tile #2 Size (0=none, 1, 2 or 2)'

      f.input :half_height
      
      f.input :sort_order
      
      f.inputs "Fullscreen Video" do 
        f.input :hero, :required => false, :as => :file, label: 'Fallback Image'
        f.input :video_mp4, :required => false, :as => :file, label: 'MP4 Video'
        f.input :video_ogg, :required => false, :as => :file, label: 'OGG Video'
      end

      f.inputs "Tile Video" do
        f.input :video_tile_mp4, :required => false, :as => :file
        f.input :video_tile_ogg, :required => false, :as => :file
      end

      f.inputs "Tile #2 Video" do
        f.input :video_tile_mp4_2, :required => false, :as => :file
        f.input :video_tile_ogg_2, :required => false, :as => :file
      end

      f.input :hero_2, :required => false, :as => :file, label: 'Info Bubbles Background Image'

      f.input :footer_featured, label: "Show on footer links"


      f.input :routes, label: 'Routes', :as => :check_boxes

    end
    f.actions
   end


  index do 
    selectable_column
    column :title

    column :sort_order
    column :hero do |e|
      image_tag(e.hero.url(:small_thumb))
    end
    column :hero_2 do |e|
      image_tag(e.hero_2.url(:small_thumb))
    end
    actions
  end

filter :title
filter :destinations

end
