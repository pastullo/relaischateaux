ActiveAdmin.register WeatherDetail do




  menu :parent => 'Destinations'


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :visitable_id, :visitable_type, :january_temperature,:january_icon_type,:january_rain_mm,:january_color,:february_temperature,:february_icon_type,:february_rain_mm,:february_color,:march_temperature,:march_icon_type,:march_rain_mm,:march_color,:april_temperature,:april_icon_type,:april_rain_mm,:april_color,:may_temperature,:may_icon_type,:may_rain_mm,:may_color,:june_temperature,:june_icon_type,:june_rain_mm,:june_color,:july_temperature,:july_icon_type,:july_rain_mm,:july_color,:august_temperature,:august_icon_type,:august_rain_mm,:august_color,:september_temperature,:september_icon_type,:september_rain_mm,:september_color,:october_temperature,:october_icon_type,:october_rain_mm,:october_color,:november_temperature,:november_icon_type,:november_rain_mm,:november_color,:december_temperature,:december_icon_type,:december_rain_mm,:december_color, 
  translations_attributes: [:id, :locale, :general_overview, :best_time, :high_season, :low_season, :best_weather, :worst_weather]



form do |f|
  f.inputs do
    f.translated_inputs "Translated fields" do |t|
      t.input :general_overview, input_html: { rows: 4 }
      # t.input :best_time, input_html: { rows: 2 }
      # t.input :high_season, input_html: { rows: 2 }
      # t.input :low_season, input_html: { rows: 2 }
      # t.input :best_weather, input_html: { rows: 2 }
      # t.input :worst_weather, input_html: { rows: 2 }
    end

    f.input :visitable_type, as: :radio, collection: ['Property','Destination'], label: 'Type'
    f.input :visitable_id, as: :select, collection: Property.all, label: 'Property:', input_html: { :class => 'Property-select selects'}, :wrapper_html => {:class => 'Property hide', :style => "display:none;" }
    f.input :visitable_id, as: :select, collection: Destination.all, label: 'Destination:', input_html: { :class => 'Destination-select selects'}, :wrapper_html => {:class => 'Destination hide', :style => "display:none;" }


    f.inputs "January" do
      f.input :january_temperature, label: 'Avg Max Temperature'
      f.input :january_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :january_rain_mm, label: 'Rain Millimiters'
      f.input :january_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "February" do
      f.input :february_temperature, label: 'Avg Max Temperature'
      f.input :february_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :february_rain_mm, label: 'Rain Millimiters'
      f.input :february_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "March" do
      f.input :march_temperature, label: 'Avg Max Temperature'
      f.input :march_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :march_rain_mm, label: 'Rain Millimiters'
      f.input :march_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end
    f.inputs "April" do
      f.input :april_temperature, label: 'Avg Max Temperature'
      f.input :april_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :april_rain_mm, label: 'Rain Millimiters'
      f.input :april_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "May" do
      f.input :may_temperature, label: 'Avg Max Temperature'
      f.input :may_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :may_rain_mm, label: 'Rain Millimiters'
      f.input :may_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "June" do
      f.input :june_temperature, label: 'Avg Max Temperature'
      f.input :june_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :june_rain_mm, label: 'Rain Millimiters'
      f.input :june_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "July" do
      f.input :july_temperature, label: 'Avg Max Temperature'
      f.input :july_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :july_rain_mm, label: 'Rain Millimiters'
      f.input :july_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "August" do
      f.input :august_temperature, label: 'Avg Max Temperature'
      f.input :august_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :august_rain_mm, label: 'Rain Millimiters'
      f.input :august_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "September" do
      f.input :september_temperature, label: 'Avg Max Temperature'
      f.input :september_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :september_rain_mm, label: 'Rain Millimiters'
      f.input :september_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "October" do
      f.input :october_temperature, label: 'Avg Max Temperature'
      f.input :october_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :october_rain_mm, label: 'Rain Millimiters'
      f.input :october_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "November" do
      f.input :november_temperature, label: 'Avg Max Temperature'
      f.input :november_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :november_rain_mm, label: 'Rain Millimiters'
      f.input :november_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end

    f.inputs "December" do
      f.input :december_temperature, label: 'Avg Max Temperature'
      f.input :december_icon_type, as: :select, collection: VISITABLE_ICONS, label: 'Icon'
      f.input :december_rain_mm, label: 'Rain Millimiters'
      f.input :december_color, as: :select, collection: VISITABLE_COLORS, label: 'Color'
    end



    f.form_buffers.last << javascript_tag("
      $('#weather_detail_visitable_type_property,#weather_detail_visitable_type_destination').change(function(){

          $('li.hide').hide();

          $('select.selects').hide().attr('name','disabled');
          $('select.'+$(this).val()+'-select').show().attr('name','weather_detail[visitable_id]');
          $('select.'+$(this).val()+'-select').parents('li').show();
        });

      ")



  end
  f.actions


 end


  index do 
    column :visitable
    # column :visitable_type
    # column :visitable do |w|
    #   "#{w.visitable.name}"
    # end


    actions
  end

filter :visitable_type


end
