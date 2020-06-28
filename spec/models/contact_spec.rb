# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'validations' do
    before do
      @contact = Contact.new(
        first_name: 'John',
        last_name: 'Doe',
        email: 'john@doe.com',
        message: 'HI this is John Doe'
      )
      expect(@contact).to be_valid
    end

    it 'is valid with valid attributes' do
      expect(@contact).to be_valid
    end

    it 'is not valid without a first_name' do
      @contact.first_name =  nil
      expect(@contact).to_not be_valid
      expect(@contact.errors.messages[:first_name]).to eq ["can't be blank"]
    end

    it 'is not valid without a last_name' do
      @contact.last_name = nil
      expect(@contact).to_not be_valid
      expect(@contact.errors.messages[:last_name]).to eq ["can't be blank"]
    end

    it 'is not valid without a email' do
      @contact.email = nil
      expect(@contact).to_not be_valid
      expect(@contact.errors.messages[:email]).to eq ["can't be blank", 'is invalid']
    end

    it 'is not valid without a message' do
      @contact.message = nil
      expect(@contact).to_not be_valid
      expect(@contact.errors.messages[:message]).to eq ["can't be blank"]
    end

    it 'is valid without a phone_number' do
      @contact.phone_number = nil
      expect(@contact).to be_valid
    end

    it 'accepts only valid email' do
      @contact.email = 'abc@example.com'
      expect(@contact).to be_valid
    end

    it 'rejects invalid format of email' do
      @contact.email = '23dgmail.com'
      expect(@contact).to_not be_valid
      expect(@contact.errors.messages[:email]).to eq ['is invalid']
    end
  end
end
