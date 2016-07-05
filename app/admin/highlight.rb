ActiveAdmin.register Highlight do


  
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :body, :tile, :video_embed, :highlightable_type, :highlightable_id,:video_tile_mp4 ,:video_tile_ogg, :block_size, :sort_order, :hero, 
  translations_attributes: [:id, :locale, :title, :body]



form do |f|
  f.inputs do

    f.translated_inputs "Translated fields" do |t|
      t.input :title
      t.input :body, label: 'Highlight Content', as: :wysihtml5, height: :medium, input_html: { rows: 6 }
    end

    f.input :tile, label: 'Fallback Image', :required => false, :as => :file
    f.input :video_tile_mp4, label: 'MP4 Video', :required => false, :as => :file
    f.input :video_tile_ogg, label: 'OGG Video', :required => false, :as => :file
    
    f.input :hero, :required => false, :as => :file, label: 'Lightbox Picture'

    f.input :video_embed, label: 'Youtube Video', input_html: { rows: 3 }

    f.input :block_size
    f.input :sort_order

    f.input :highlightable_type, as: :radio, collection: ['Property','Destination'], label: 'Type'


    f.input :highlightable_id, as: :select, collection: Property.all, label: 'Property:', input_html: { :class => 'Property-select selects'}, :wrapper_html => {:class => 'Property hide', :style => "display:none;" }

    f.input :highlightable_id, as: :select, collection: Destination.all, label: 'Destination:', input_html: { :class => 'Destination-select selects'}, :wrapper_html => {:class => 'Destination hide', :style => "display:none;" }



    f.form_buffers.last << javascript_tag("
      $('#highlight_highlightable_type_property,#highlight_highlightable_type_destination').change(function(){

          $('li.hide').hide();

          $('select.selects').hide().attr('name','disabled');
          $('select.'+$(this).val()+'-select').show().attr('name','highlight[highlightable_id]');
          $('select.'+$(this).val()+'-select').parents('li').show();
        });

      ")



  end
  f.actions


 end


  index do 

    column :title
    column :highlightable
    column :block_size

    column :tile do |e|
      image_tag(e.tile.url(:thumb))
    end

    actions
  end

  filter :title
  # filter :highlightable

end
