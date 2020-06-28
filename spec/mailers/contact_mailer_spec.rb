# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContactMailer, type: :mailer do
  before do
    @contact = Contact.create(
      first_name: 'John',
      last_name: 'Doe',
      email: 'john@doe.com',
      message: 'HI this is John Doe'
    )
    # Set up an email using the contact contents
    @email = ContactMailer.with(contact: @contact).new_contact_email
  end

  it 'renders the subject' do
    expect(@email.subject).to eq('You got a new contact!')
  end

  it 'renders the recievers email' do
    expect(@email.to).to eq(['info@ajackus.com'])
  end

  it 'renders the senders email' do
    expect(@email.from).to eq(['admin@contacts.com'])
  end

  it 'renders the subject' do
    expect(@email.subject).to eq('You got a new contact!')
  end

  it 'renders first_name for contact' do
    expect(@email.html_part.body.encoded).to match(@contact.first_name)
  end

  it 'renders last_name for contact' do
    expect(@email.html_part.body.encoded).to match(@contact.last_name)
  end

  it 'renders email for contact' do
    expect(@email.html_part.body.encoded).to match(@contact.email)
  end

  it 'renders message for contact' do
    expect(@email.html_part.body.encoded).to match(@contact.message)
  end
end
