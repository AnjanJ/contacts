# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'config/locales/ru.yml' do
  before do
    I18n.locale = :ru
  end

  it 'correctly translates strings to russian' do
    expect(I18n.t('contact.inputs.first_name.label')).to eq 'Скажи нам свое имя'
    expect(I18n.t('contact.inputs.first_name.place_holder')).to eq 'Имя'
    expect(I18n.t('contact.inputs.last_name.label')).to eq 'Скажи нам свое имя'
    expect(I18n.t('contact.inputs.last_name.place_holder')).to eq 'Фамилия'
    expect(I18n.t('contact.inputs.email.label')).to eq 'Введите адрес электронной почты'
    expect(I18n.t('contact.inputs.email.place_holder')).to eq 'Например. example@email.com'
    expect(I18n.t('contact.inputs.phone_number.label')).to eq 'Введите номер телефона'
    expect(I18n.t('contact.inputs.phone_number.place_holder')).to eq 'Например. +1 800 000000'
    expect(I18n.t('contact.inputs.message.label')).to eq 'Сообщение'
    expect(I18n.t('contact.inputs.message.place_holder')).to eq 'Напишите нам сообщение'
    expect(I18n.t('contact.form.static_text.form_title')).to eq 'Отправьте нам сообщение'
    expect(I18n.t('contact.form.static_text.button')).to eq 'Отправить сообщение'
    expect(I18n.t('contact.form.static_text.address')).to eq 'Адрес'
    expect(I18n.t('contact.form.static_text.detail_address')).to eq 'Мада Центр 8 этаж, 379 Hudson St, Нью-Йорк, NY 10018 US'
    expect(I18n.t('contact.form.static_text.talk')).to eq 'Давайте поговорим'
    expect(I18n.t('contact.form.static_text.support')).to eq 'Общая поддержка'
  end

  after do
    I18n.locale = :en
  end
end
