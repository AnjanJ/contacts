class Contact < ApplicationRecord
    validates_presence_of :first_name, :last_name, :email, :message
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
