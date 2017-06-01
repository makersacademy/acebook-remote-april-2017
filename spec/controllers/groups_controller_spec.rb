require 'rails_helper'

RSpec.describe GroupsController, type: :controller do

  describe "GET /new " do
    xit "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    xit "responds with 200" do
      group :create, params: { group: { name: "Group 1" } }
      expect(response).to redirect_to(groups_url)
    end

    xit "creates a group" do
      group = create(:group)
      expect(Group.find_by(name: "Group 1")).to be
    end
  end

end
