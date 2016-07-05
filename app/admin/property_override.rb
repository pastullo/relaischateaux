ActiveAdmin.register PropertyOverride do

  menu :parent => 'Routes'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :stage_id, :property_id, :property_hero
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
    f.input :stage, :member_label => :name_with_route
    f.input :property


    f.input :property_hero, :required => false, :as => :file, label: 'Override Property Hero'

    

  end
  f.actions
 end


index do 

  column 'Route' do |o|
    o.stage.name_with_route
  end

  column :property

  column :property_hero do |e|
    image_tag(e.property_hero.url(:small_thumb))
  end


  actions
end


end
