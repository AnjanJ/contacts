require 'test_helper'

class LocaleEnglishTest < ActiveSupport::TestCase
    setup do
        I18n.locale = :en
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

    test 'vaild en translations' do

        assert_equal "Tell us your name", @first_name_label
        assert_equal "First name", @first_name_place_holder
        assert_equal "Tell us your name", @last_name_label
        assert_equal "Last Name", @last_name_place_holder
        assert_equal "Enter your email", @email_label
        assert_equal "Eg. example@email.com", @email_place_holder
        assert_equal "Enter phone number", @phone_number_label
        assert_equal "Eg. +1 800 000000", @phone_number_place_holder
        assert_equal "Message", @message_label
        assert_equal "Message", @message_place_holder
        assert_equal "Write us a message",  @form_title
        assert_equal "Send us a Message", @button
        assert_equal "Address", @address
        assert_equal "Mada Center 8th floor, 379 Hudson St, New York, NY 10018 US ", @detail_address
        assert_equal  "Lets Talk", @talk
        assert_equal "General Support", @support
    end
end