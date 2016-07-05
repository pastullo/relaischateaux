ActiveAdmin.register ExperienceStage do

  menu :parent => 'Experiences'
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :experience_id, :property_id, :destination_id, :sort_order, :lightbox_hero,
  :destination_name, :destination_short_description, :destination_long_description,
  :property_name, :property_short_description, :property_long_description, :destination_hero, :property_hero,
  translations_attributes: [:id, :locale, :destination_name, :destination_short_description, :destination_long_description, :property_name, :property_short_description, :property_long_description]
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

      f.input :experience

      f.input :destination 
      f.input :property 
      # f.input :short_description, label: 'Short Description', input_html: { rows: 3 }

      f.input :property_hero, :required => false, :as => :file, label: 'Override Property Hero'
      f.input :destination_hero, :required => false, :as => :file, label: 'Override Destination Hero'
      f.input :lightbox_hero, :required => false, :as => :file, label: 'Override Hero in Lightbox'

      f.translated_inputs "Translated fields" do |t|
        t.input :destination_name, input_html: { rows: 1 }
        t.input :destination_short_description, as: :wysihtml5, height: :tiny
        t.input :destination_long_description, as: :wysihtml5, height: :medium

        t.input :property_name, input_html: { rows: 1 }
        t.input :property_short_description, as: :wysihtml5, height: :tiny
        t.input :property_long_description, as: :wysihtml5, height: :medium
      end


      f.input :sort_order
    end
    f.actions
   end

  index do 

    column :experience
    column :destination
    column :property

    column :sort_order
    column 'Override Dest' do |s|
      image_tag s.destination_hero.url(:small_thumb) if s.destination_hero.present?
    end
    column 'Override Prop' do |s|

      image_tag s.property_hero.url(:small_thumb) if s.property_hero.present?
    end

    actions
  end

  filter :experience
  filter :destination
  filter :property

end
