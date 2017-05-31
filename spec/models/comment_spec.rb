require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do
    @post = Post.create(message: "Hello, world!")
    @comment = @post.comments.create(commenter: "Bob", body: "Comment")
  end
  it "has a body" do
    expect(@comment.body).to eq("Comment")
  end
  it "has a commenter" do
    expect(@comment.commenter).to eq("Bob")
  end
end
