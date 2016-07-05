ActiveAdmin.register Room do

  menu :parent => 'Rooms'

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :name, :description, :persons, :price_conditions, :room_category_id, :from_price, :price_type, :currency, :size, room_feature_ids: [],
  translations_attributes: [:id, :locale, :name, :description, :price_conditions]


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
      t.input :description, input_html: { rows: 5 }
    end
    f.input :room_category, :member_label => :extended_name

    f.input :from_price
    f.input :currency, :as => :select, :collection => CURRENCIES_LIST
    f.input :price_type, :as => :select, :collection => ROOM_PRICE_TYPES

    f.input :size
    f.input :persons

    f.input :room_features, :as => :check_boxes


  end

  f.actions
 end


index do 
  column :name

  column :room_category do |r|
    if(r.room_category.present? and r.room_category.property.present?)
      "#{link_to r.room_category.property.name, admin_property_path(r.room_category.property_id)} -
     #{link_to r.room_category.name, admin_room_category_path(r.room_category.id)}".html_safe
   end
  end
  column 'images' do |r|
    r.room_pictures.count
  end

  actions
end

end
