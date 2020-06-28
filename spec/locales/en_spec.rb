# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'config/locales/en.yml' do
  before do
    I18n.locale = :en
  end

  it 'correctly translates strings to English' do
    expect(I18n.t('contact.inputs.first_name.label')).to eq 'Tell us your name'
    expect(I18n.t('contact.inputs.first_name.place_holder')).to eq 'First name'
    expect(I18n.t('contact.inputs.last_name.label')).to eq 'Tell us your name'
    expect(I18n.t('contact.inputs.last_name.place_holder')).to eq 'Last Name'
    expect(I18n.t('contact.inputs.email.label')).to eq 'Enter your email'
    expect(I18n.t('contact.inputs.email.place_holder')).to eq 'Eg. example@email.com'
    expect(I18n.t('contact.inputs.phone_number.label')).to eq 'Enter phone number'
    expect(I18n.t('contact.inputs.phone_number.place_holder')).to eq 'Eg. +1 800 000000'
    expect(I18n.t('contact.inputs.message.label')).to eq 'Message'
    expect(I18n.t('contact.inputs.message.place_holder')).to eq 'Write us a message'
    expect(I18n.t('contact.form.static_text.form_title')).to eq 'Send us a Message'
    expect(I18n.t('contact.form.static_text.button')).to eq 'Send Message'
    expect(I18n.t('contact.form.static_text.address')).to eq 'Address'
    expect(I18n.t('contact.form.static_text.detail_address')).to eq 'Mada Center 8th floor, 379 Hudson St, New York, NY 10018 US '
    expect(I18n.t('contact.form.static_text.talk')).to eq 'Lets Talk'
    expect(I18n.t('contact.form.static_text.support')).to eq 'General Support'
  end
end
