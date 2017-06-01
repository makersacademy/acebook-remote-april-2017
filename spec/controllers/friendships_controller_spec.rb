require 'rails_helper'

RSpec.describe FriendshipsController, type: :controller do
  include Devise::Test::ControllerHelpers

  describe "POST create" do
    let(:user){ User.new(email: "example@example.com",
      password: "password", password_confirmation:"password", id: 1)}
    let(:user2){ User.new(email: "friend@example.com",
        password: "password", password_confirmation:"password", id: 2)}

    it "creates a friendship" do
      allow(request.env['warden']).to receive(:authenticate!).and_return(user)
      allow(controller).to receive(:current_user).and_return(user)
      post :create, params: { friend_id: user2.id }
      expect(user.friendships[0].friend_id).to eq(user2.id)
    end
  end
end
