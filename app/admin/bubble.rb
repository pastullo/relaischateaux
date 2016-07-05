ActiveAdmin.register Bubble do

  menu :parent => 'Experiences'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :icon, :body, :sort_order, :experience_id, :icon_type, :video,
  translations_attributes: [:id, :locale, :title, :body]
  #
  # or
  #

form do |f|
  f.inputs do
    f.translated_inputs "Translated fields" do |t|
      t.input :title
      t.input :body, as: :wysihtml5, height: :large
    end

    f.input :experience
    f.input :video, input_html: { rows: 3 }

    f.input :icon, :required => false, :as => :file, label: 'Hero Image'

    f.input :sort_order

  end
  f.actions
 end


index do 
  column :title
  column :experience

  column 'Image' do |e|
    image_tag(e.icon.url(:small_thumb))
  end

  actions
end

filter :experience
filter :title


end
