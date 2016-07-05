ActiveAdmin.register Gallery do

  menu :parent => 'Galleries'


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :sort_order, :gallerizable_id, :gallerizable_type, translations_attributes: [:id, :locale, :name]
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
      t.input :name
    end

    f.input :gallerizable_type, as: :radio, collection: ['Property','Destination'], label: 'Type'

    f.input :gallerizable_id, as: :select, collection: Property.all, label: 'Property:', input_html: { :class => 'Property-select selects'}, :wrapper_html => {:class => 'Property hide', :style => "display:none;" }
    f.input :gallerizable_id, as: :select, collection: Destination.all, label: 'Destination:', input_html: { :class => 'Destination-select selects'}, :wrapper_html => {:class => 'Destination hide', :style => "display:none;" }

    f.input :sort_order

    f.form_buffers.last << javascript_tag("
      $('#gallery_gallerizable_type_property,#gallery_gallerizable_type_destination').change(function(){

          $('li.hide').hide();

          $('select.selects').hide().attr('name','disabled');
          $('select.'+$(this).val()+'-select').show().attr('name','gallery[gallerizable_id]');
          $('select.'+$(this).val()+'-select').parents('li').show();
        });

      ")



  end
  f.actions


 end


  index do 

    column :name
    column :gallerizable


    actions
  end

end
