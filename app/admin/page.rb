ActiveAdmin.register Page do


  menu :parent => 'Pages'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :body, :sort_order, :display_in_footer,
  translations_attributes: [:id, :locale, :title, :body]
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
        t.input :title
        t.input :body, as: :wysihtml5, height: :large
      end

      f.input :display_in_footer
      f.input :sort_order
    end
    f.actions
  end

end
