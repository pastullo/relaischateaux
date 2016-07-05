ActiveAdmin.register Consultant do


  menu :parent => 'Pages'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  permit_params :name, :job, :review, :review_by, :sort_order, :image,
  translations_attributes: [:id, :locale, :name, :job, :review, :review_by]

  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.translated_inputs "Translated fields" do |t|
        t.input :name
        t.input :job
        t.input :review, input_html: { rows: 2 }
        t.input :review_by
      end
    
    f.input :image, :required => false, :as => :file, label: 'Picture'
    f.input :sort_order

    f.actions
    end
  end

  index do 

    column :image do |e|
      image_tag(e.image.url(:thumb_small))
    end
    
    column :name
    column :sort_order


    actions
  end



end
