require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
  describe "contacts#new" do
    it "should load the contacts/new modal" do
      get :new
      expect(response).to have_http_status :success
    end
  end

  describe "contacts#create" do
    it "should load the create a new contact with their message" do
      
      post :create, params: { contact: {name: "Gina Tina", email: "dummyEmail@gamil.com", message: "I would like to talk about accounting"} }
    
      contact = Contact.last
      expect(contact.name).to eq("Gina Tina")
    end
  end
  
end
