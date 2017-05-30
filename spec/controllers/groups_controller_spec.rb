require 'rails_helper'

RSpec.describe GroupsController, type: :controller do

  describe "GET /" do
    it "responds with 204" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

end
