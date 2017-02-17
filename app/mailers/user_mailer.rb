class UserMailer < ApplicationMailer
  default_from:"do-not-replay@example.com"
  def contact_email
    @contact = contact
    mail(to: ENV["OWNER_EMAIL"], from: @contact.email, :subject => "Website Contact")
  end
  
  
end
