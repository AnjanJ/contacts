require "rails_helper"

RSpec.describe ContactsController, type: :routing do
  include Shoulda::Matchers::Routing
  describe "routing" do
    it "routes to #new" do
      expect(get: "/contacts/new").to route_to("contacts#new")
    end

    it "routes to #create" do
      expect(post: "/contacts").to route_to("contacts#create")
    end
  end
end
