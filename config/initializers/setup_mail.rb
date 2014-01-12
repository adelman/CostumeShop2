ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "wesleyan.edu",
  :user_name            => "costumeshop@wesleyan.edu",
  :password             => ENV['EMAIL_PASS'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
