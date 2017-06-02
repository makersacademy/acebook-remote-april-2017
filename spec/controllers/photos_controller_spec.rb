require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  include Devise::TestHelpers

  describe "GET #index" do
    it "returns http success" do
      user = create(:user)
      sign_in(user)
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  it { is_expected.to be }

end
