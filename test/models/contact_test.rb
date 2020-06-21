require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  setup do
    @contact = contacts(:one)
  end

  test 'vaild contact' do
    assert @contact.valid?
  end

  test 'invalid without first_name' do
    @contact.first_name = nil
    assert_not @contact.valid?
    assert_not_nil @contact.errors[:first_name]
  end

  test 'invalid without last_name' do
    @contact.last_name = nil
    assert_not @contact.valid?
    assert_not_nil @contact.errors[:last_name]
  end

  test 'invalid without message' do
    @contact.message = nil
    assert_not @contact.valid?
    assert_not_nil @contact.errors[:message]
  end

  test 'invalid without email' do
    @contact.email = nil
    assert_not @contact.valid?
    assert_not_nil @contact.errors[:email]
  end

  test 'invalid without proper email' do
    @contact.email = 'email'
    assert_not @contact.valid?
    assert_not_nil @contact.errors[:email]
  end
end
