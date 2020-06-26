require 'rails_helper'

RSpec.describe "/contacts", type: :request do
    # Contact. As you add validations to Contact, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) { 
        {
             "first_name" => "John", 
             "last_name" => "Doe",
             "email" => "john@doe.com",
             "phone_number" => "9988117722",
             "message" => "This is a message"
         } 
    }
  
    let(:invalid_attributes) {
      {
          "first_name" => 1233,
          "last_name" => nil
      }
    }
  
    describe "GET /new" do
      it "renders a successful response" do
        get new_contact_url
        expect(response).to be_successful
      end
    end
  
    describe "POST /create" do
      context "with valid parameters" do
        it "creates a new Contact" do
          expect {
            post contacts_url, params: { contact: valid_attributes }
          }.to change(Contact, :count).by(1)
        end
  
        it "redirects to the created contact" do
          post contacts_url, params: { contact: valid_attributes }
          expect(response).to redirect_to(root_url)
        end
      end
  
      context "with invalid parameters" do
        it "does not create a new Contact" do
          expect {
            post contacts_url, params: { contact: invalid_attributes }
          }.to change(Contact, :count).by(0)
        end
  
        it "renders a successful response (i.e. to display the 'new' template)" do
          post contacts_url, params: { contact: invalid_attributes }
          expect(response).to be_successful
        end
      end
    end   
  end
  