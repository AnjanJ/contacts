require 'test_helper'

class LocaleTest < ActiveSupport::TestCase
    setup do
        I18n.locale= :ru
        @first_name_label = I18n.t "contact.inputs.first_name.label"
        @first_name_place_holder = I18n.t "contact.inputs.first_name.place_holder"
        @last_name_label = I18n.t "contact.inputs.first_name.label"
        @last_name_place_holder = I18n.t "contact.inputs.last_name.place_holder"
        @email_label = I18n.t "contact.inputs.email.label"
        @email_place_holder = I18n.t "contact.inputs.email.place_holder"
        @phone_number_label = I18n.t "contact.inputs.phone_number.label"
        @phone_number_place_holder = I18n.t "contact.inputs.phone_number.place_holder"
        @message_label = I18n.t "contact.inputs.message.label"
        @message_place_holder = I18n.t "contact.inputs.message.place_holder"
        @form_title = I18n.t "contact.form.static_text.form_title"
        @button = I18n.t "contact.form.static_text.button"
        @address = I18n.t "contact.form.static_text.address"
        @detail_address = I18n.t "contact.form.static_text.detail_address"
        @talk = I18n.t "contact.form.static_text.talk"
        @support = I18n.t "contact.form.static_text.support"
    end

    test 'vaild ru translations' do
        assert_equal "Скажи нам свое имя", @first_name_label
        assert_equal "Имя", @first_name_place_holder
        assert_equal "Скажи нам свое имя", @last_name_label
        assert_equal "Фамилия", @last_name_place_holder
        assert_equal "Введите адрес электронной почты", @email_label
        assert_equal "Например. example@email.com", @email_place_holder
        assert_equal "Введите номер телефона", @phone_number_label
        assert_equal "Например. +1 800 000000", @phone_number_place_holder
        assert_equal "Сообщение", @message_label
        assert_equal "Напишите нам сообщение", @message_place_holder
        assert_equal "Отправьте нам сообщение",  @form_title
        assert_equal "Отправить сообщение", @button
        assert_equal "Адрес", @address
        assert_equal "Мада Центр 8 этаж, 379 Hudson St, Нью-Йорк, NY 10018 US", @detail_address
        assert_equal "Давайте поговорим", @talk
        assert_equal "Общая поддержка", @support
    end
end