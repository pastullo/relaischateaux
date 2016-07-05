class EnquiriesController < ApplicationController

  skip_before_action :create_enquire

  def new
    @enquire = Enquire.new
  end

  def submit

    @enquire = Enquire.new(enquire_params)
    @enquire.locale = I18n.locale
    

  end

  def create

    @enquire = Enquire.new(enquire_params)
    @enquire.locale = I18n.locale
    @enquire.phone = "#{params[:country_code]} #{params[:enquire][:phone]}"

    
    @enquire.ip_address = request.remote_ip

    @enquire.clickpath = "<ol>#{session[:clickpath].to_a.uniq.join('<br>')}</ol>"
    @enquire.entry_page = session[:entry_page]
    @enquire.referrer = session[:referrer]
    

    # children ages
    children_csv = Array.new
    1.upto(params[:enquire][:children].to_i).each do |i|
      age = params["children_#{i.to_s}_age"]
      children_csv << (age == 'false' ? '' : age) 
    end

    @enquire.children_ages = children_csv.join(',')
    @enquire.arrival_date = params['date']['month']


    if @enquire.save 
      @enquire.delay.send_to_ed unless Rails.env.staging?
      EnquireMailer.delay.welcome_email(@enquire)
      EnquireMailer.delay.backup_email(@enquire)
    end

  end

  private

    def enquire_params
      params.require(:enquire).permit(:full_name, :email, :phone, :comments, :newsletter, :adults, :children, :stay_duration, :arrival_date)
    end

end
