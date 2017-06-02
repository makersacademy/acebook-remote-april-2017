require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST create" do
    it "creates a comment" do
      some_post = post(:create)
      post :create, params: { post_id: some_post.id, comment: { commenter: "Bob", body: "Comment", post_id: some_post.id } }
      expect(some_post.comments[0].body).to eq("Comment")
    end
  end
end
