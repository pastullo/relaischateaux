# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.mandrillapp.com',
  :port           => '587',
  :authentication => :login,
  :user_name      => ENV["MAIL_USERNAME"],
  :password       => ENV["MAIL_PASSWORD"],
  :domain         => ENV["MAIL_DOMAIN"],
  :enable_starttls_auto => true
}