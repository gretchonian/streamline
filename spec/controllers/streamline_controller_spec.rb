require 'rails_helper'

RSpec.describe StreamlineController, type: :controller do
  describe "streamline#index" do
    it "should load the webpage" do
      get :index
      expect(response).to have_http_status :success
    end
  end
end
