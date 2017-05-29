require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time' do
    expect(Post.new.post_time).to eq Time.now
  end
end
