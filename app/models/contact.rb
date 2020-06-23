class Contact < ApplicationRecord
    validates_presence_of :first_name, :last_name, :message
    validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

    after_create_commit :notify_about_new_contact

    def notify_about_new_contact
        ContactMailer.with(contact: self).new_contact_email.deliver_later
    end
end
