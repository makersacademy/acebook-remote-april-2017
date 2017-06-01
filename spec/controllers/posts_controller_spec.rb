require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  include Devise::TestHelpers

  describe "GET /new " do
    it "responds with 200" do
      user = create(:user)
      sign_in(user)
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      user = create(:user)
      sign_in(user)
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
      post = create(:post)
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end

  describe "GET /" do
    it "responds with 200" do
      user = create(:user)
      sign_in(user)
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'Posts are ordered' do
    it 'shows post in order' do
      post = create(:post, message: "My first post")
      post = create(:post, message: "My second post")
      expect(Post.first[:message]).to eq('My first post')
      expect(Post.last[:message]).to eq('My second post')
    end
  end

end
