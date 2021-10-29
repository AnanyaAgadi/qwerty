class UserMailer < ApplicationMailer
  default from: "infoedifybrokers@gmail.com"
  
  def contact_form(email, name, message)
    @message = message
      mail(from: "infoedifybrokers@gmail.com",
        to: 'demoananya@gmail.com',subject: "A new contact form message from #{name}")
    end
end

