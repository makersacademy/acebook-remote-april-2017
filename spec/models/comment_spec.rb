require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:post){ create :post}
  let(:comment){ create :comment }
  it "has a body" do
    expect(comment.body).to eq("Comment")
  end
  it "has a commenter" do
    expect(comment.commenter).to eq("example@example.com")
  end
end
