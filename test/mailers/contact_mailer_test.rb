require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "new contact email" do
    # Set up an contact based on the fixture
    contact = contacts(:one)

    # Set up an email using the contact contents
    email = ContactMailer.with(contact: contact).new_contact_email

    # Check if the email is sent
    assert_emails 1 do
      email.deliver_now
    end

    # Check the contents are correct
    assert_equal ['admin@contacts.com'], email.from
    assert_equal ['info@ajackus.com'], email.to
    assert_equal "You got a new contact!", email.subject
    assert_match contact.first_name, email.html_part.body.encoded
    assert_match contact.first_name, email.text_part.body.encoded

    assert_match contact.last_name, email.html_part.body.encoded
    assert_match contact.last_name, email.text_part.body.encoded

    assert_match contact.email, email.html_part.body.encoded
    assert_match contact.email, email.text_part.body.encoded

    assert_match contact.phone_number, email.html_part.body.encoded
    assert_match contact.phone_number, email.text_part.body.encoded

    assert_match contact.message, email.html_part.body.encoded
    assert_match contact.message, email.text_part.body.encoded
  end
end
