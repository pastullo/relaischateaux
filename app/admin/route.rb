ActiveAdmin.register Route do

  menu :parent => 'Routes'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :recap, :hero, :tile, :footer_featured, :sort_order, :short_description,
  translations_attributes: [:id, :locale, :name, :recap, :short_description]
  #
  # or
  #
form do |f|
  f.inputs do

    f.translated_inputs "Translated fields" do |t|
      t.input :name, input_html: { rows: 1 }
      t.input :recap, input_html: { rows: 1 }
      t.input :short_description, label: 'Short Description', input_html: { rows: 3 }
    end


    f.input :hero, :required => false, :as => :file

    f.input :tile, :required => false, :as => :file

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

  column 'Preview' do |r|
    link_to 'preview', route_path(r.id)
  end


  actions
end

filter :name

end
