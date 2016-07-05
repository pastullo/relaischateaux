ActiveAdmin.register RoomCategory do

  menu :parent => 'Rooms'

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :property_id, :sort_order, translations_attributes: [:id, :locale, :name]
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
    f.input :property
    f.input :sort_order
  end

  f.actions
 end

end
