class EnquireMailer < ActionMailer::Base
  default from: "enquiries@iconexpeditions.com"

  def welcome_email(enquire)
    @enquire = enquire
    I18n.locale = @enquire.locale
    mail(
      from: "Relais & Châteaux Africa <enquiries@iconexpeditions.com>", 
      to: @enquire.email, 
      subject: I18n.t('email.subject')
    )
  end

  def backup_email(enquire)
    @enquire = enquire
    
    mail(
      from: "Relais & Châteaux Africa <enquiries@iconexpeditions.com>", 
      to: "Relais & Châteaux Africa <enquiries@iconexpeditions.com>", 
      subject: "Enquire Backup #{enquire.sequential_id}"
    )
  end

end
