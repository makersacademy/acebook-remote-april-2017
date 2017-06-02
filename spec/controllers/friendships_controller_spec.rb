require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  include Devise::Test::ControllerHelpers
  let(:user) { create :user }
  let(:friend) { create :user }


  describe "POST create" do
    it "creates a friendship" do
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)
      post :create, params: { friend_id: friend.id }
      expect(user.friendships[0].friend_id).to eq(friend.id)
    end
  end
end
