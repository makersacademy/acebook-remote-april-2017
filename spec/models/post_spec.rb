require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time and date' do
    new_post = Post.new(message: "thing",created_at: Time.now.strftime('%H:%M'))
    p new_post
    expect(new_post.created_at).to eq Time.now.strftime('%H:%M')

  end
end
