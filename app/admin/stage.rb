ActiveAdmin.register Stage do

  menu :parent => 'Routes'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :recap, :destination_id, :destination_hero, :route_id, :sort_order, :short_description, :days,
  translations_attributes: [:id, :locale, :recap, :short_description]
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

form do |f|
  f.inputs do
    f.input :route
    f.input :destination
  
    f.translated_inputs "Translated fields" do |t|    
      t.input :recap, label: 'Recap', input_html: { rows: 2 }
      t.input :short_description, label: 'Short Description', input_html: { rows: 3 }
    end

    f.input :destination_hero, :required => false, :as => :file, label: 'Override Destination Hero'

    f.input :days, label: 'Stay Duration in Nights'
    
    f.input :sort_order
    

  end
  f.actions
 end


  index do 
    column :route
    column :destination
    column :sort_order
    column :days
    # column :blocksize
    # column :color
    # column :hero do |e|
    #   image_tag(e.hero.url(:small_thumb))
    # end
    # column :hero_2 do |e|
    #   image_tag(e.hero_2.url(:small_thumb))
    # end
    actions
  end

end
