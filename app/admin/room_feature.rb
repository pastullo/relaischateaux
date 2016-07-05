ActiveAdmin.register RoomFeature do

  menu :parent => 'Rooms'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :icon, translations_attributes: [:id, :locale, :name]
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
  f.translated_inputs "Translated fields" do |t|
    t.input :name, input_html: { rows: 1 }
  end
    f.input :icon, :required => false, :as => :file
  end

  f.actions
 end


index do 
  column :name

  column :icon do |r|
    image_tag r.icon.url(:thumb_small)
  end

  actions
end


end
