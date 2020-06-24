require 'simplecov'
SimpleCov.start do
  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_filter '/test/'
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
require 'minitest/autorun'

require 'rails/test_help'

# require 'minitest/rails'


# # SimpleCov.start do
# #   add_filter "/test/"
# # end


# # SimpleCov.use_merging(true)
# # puts "required simplecov"



class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
