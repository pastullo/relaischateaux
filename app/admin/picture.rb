ActiveAdmin.register Picture do

  menu :parent => 'Galleries'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :image, :gallery_id, :sort_order
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

    f.input :image, :required => false, :as => :file

    f.input :gallery, :member_label => :extended_name

    f.input :sort_order

  end
  f.actions
 end


index do 

  column :image do |e|
    image_tag(e.image.url(:thumb_small))
  end


  column 'Gallery' do |p|
    link_to p.gallery.gallerizable.name if p.gallery.present? and p.gallery.gallerizable.present?
  end

  column :sort_order

  actions
end

end
