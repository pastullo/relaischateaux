ActiveAdmin.register RoomPicture do

  menu :parent => 'Rooms'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :room_id, :image
  #

form do |f|
  f.inputs do

    f.input :room, :member_label => :extended_name

    f.input :image, :required => false, :as => :file


  end
  f.actions
 end


index do 
  
  column :room_name do |p|
    p.room.extended_name if p.room.present?
  end


  column :image do |e|
    image_tag(e.image.url(:thumb_small))
  end
  actions
end

filter :room, :member_label => :extended_name

end
