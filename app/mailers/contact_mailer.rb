class ContactMailer < ApplicationMailer
  def new_contact_email
    @contact = params[:contact]

    mail(to: 'info@ajackus.com', subject: "You got a new contact!")
    end
end
