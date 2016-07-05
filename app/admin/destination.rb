ActiveAdmin.register Destination do

  menu :parent => 'Destinations'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :location, :sort_order, :about_tile, :lat, :lng, :zoom, :footer_featured, :about_body, :hero, :tile, :short_description, :video_mp4, :video_ogg, 
  translations_attributes: [:id, :locale, :name, :location, :short_description, :about_body, :properties_text]
  #
  # or
  #
form do |f|
  f.inputs do

    f.translated_inputs "Translated fields" do |t|
      t.input :name
      t.input :location, input_html: { rows: 1 }

      t.input :short_description, label: 'Short Description', input_html: { rows: 4 }

      t.input :about_body, label: 'About Text', as: :wysihtml5, height: :large

      t.input :properties_text, input_html: { rows: 3 }
    end

    f.inputs 'Fullscreen Video' do
      f.input :hero, :required => false, :as => :file, label: 'Fallback Image'
      f.input :video_mp4, :required => false, :as => :file, label: 'Video MP4'
      f.input :video_ogg, :required => false, :as => :file, label: 'Video OGG'
    end

    f.input :tile, :required => false, :as => :file, label: 'Listings Tile'

    f.input :about_tile,label: 'About Background Image', :required => false, :as => :file, input_html: { rows: 3 }

    f.inputs 'Maps' do
      f.input :lat, label: "Latitude"
      f.input :lng, label: "Longitude"
      f.input :zoom, label: "Zoom Level (1-12)"
    end

    f.input :sort_order
    f.input :footer_featured, label: "Show on footer links"

  end
  f.actions
 end


index do 
  column :hero do |e|
    image_tag(e.hero.url(:small_thumb))
  end

  column :name
  column :location
  column :sort_order

  actions
end


end
