require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact = contacts(:one)
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { email: @contact.email, first_name: @contact.first_name, last_name: @contact.last_name, message: @contact.message, phone_number: @contact.phone_number } }
    end

    assert_redirected_to root_url
  end

end
