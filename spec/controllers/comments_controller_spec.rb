require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe "POST /" do
    before(:each) do
      @post = Post.create(message: "Hello, world!")
      @comment = @post.comments.create(commenter: "Bob", body: "Comment")
    end
    it "creates a comment" do
      expect(@post.comments[0].body).to eq("Comment")
    end
  end
end
