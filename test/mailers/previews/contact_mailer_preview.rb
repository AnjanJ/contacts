# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    def new_contact_email
        # Set up a temporary order for the preview
        contact = Contact.new(first_name: "Joe", last_name: "Smith", email: "joe@gmail.com", phone_number: "090-7777-8888", message: "Please conact me")
    
        ContactMailer.with(contact: contact).new_contact_email
      end
end
