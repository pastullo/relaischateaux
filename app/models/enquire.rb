class Enquire < ActiveRecord::Base
  validates :full_name, presence: true#, message: I18n.t('errors.name')
  validates :phone, presence: true#, message: I18n.t('errors.phone')
  validates :email, presence: true#, message: I18n.t('errors.email')

  before_save :add_sequential_id

  def send_to_ed
    
    

    ed_details = {
      ed_website: ED_SECRETS[self.locale.to_sym][:ed_website],
      ed_passkey: ED_SECRETS[self.locale.to_sym][:ed_passkey],
      website_reference_number: "REL-#{self.locale.upcase}-#{self.sequential_id}",
      first_name: self.full_name.split(' ', 2).first,
      last_name: self.full_name.split(' ', 2).last,
      email: self.email,
      contact_number: self.phone,
      ip_address: self.ip_address,
      source_id: '1',
      comments: self.comments,
      stay_duration: self.stay_duration,
      adults: self.adults.to_s,
      children: self.children.to_s,
      children_ages: self.children_ages,
      arrival_date: Date::MONTHNAMES[self.arrival_date.to_i],
      clickpath: self.clickpath,
      entry_page: self.entry_page,
      referrer: self.referrer,
      newsletter_subscribe: self.newsletter
    }    

    # puts ed_details


    uri = URI('http://ed.rhinoafrica.com/submit')
    res = Net::HTTP.post_form(uri, ed_details)
    
    # puts res.body

  end

  private
    def add_sequential_id
      self.sequential_id = Enquire.where(['locale = ?', self.locale]).count + 1
      # puts "sequential id set to: #{sequential_id}"
    end
end
