require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST /" do
    let!(:post) do
      Post.create(message: 'Hello, World!')
    end
    it "creates a comment" do
      post_id = post.id
      post :create, params: { comment: { commenter: "Bob", body: "Comment" } }
      expect(post.comments[0]).to eq("Comment")
    end
  end
end
