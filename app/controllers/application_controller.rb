class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale, :create_meta_tags, :create_enquire, :set_entry_page

  http_basic_authenticate_with :name => "relais", :password => "relais", if: :need_http_auth
 

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: (I18n.locale == I18n.default_locale ? nil : I18n.locale) }.merge options
  end

  def create_enquire
    @enquire = Enquire.new
  end

  def track_clickpath
    session[:clickpath] ||= Array.new
    session[:clickpath] << "<li>#{controller_name}: #{params[:id]}</li>"
    session[:clickpath] = session[:clickpath].uniq
  end

  def set_entry_page
    session[:entry_page] ||= request.original_fullpath
    session[:referrer] ||= request.referer
  end

  def create_meta_tags
    @meta_tags = {title: I18n.t('meta.title'), description: I18n.t('meta.description'), image: nil, url: nil, type: nil}
  end

  def set_meta_tags(tags = {})
    # puts @meta_tags.inspect
    tags.each do |k,v|
      if k == :image
        @meta_tags[k] = URI.join(request.url, v)
      else
        @meta_tags[k] = v
      end
    end
    # puts @meta_tags.inspect
  end

  private 
  def need_http_auth
    Rails.env.staging?
  end

end
