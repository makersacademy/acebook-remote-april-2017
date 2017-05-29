require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time and date' do
    new_post = Post.new(message: "thing", created_at: Time.now)
    expect(new_post.format_time).to eq "posted at #{Time.now.strftime('%H:%M')} on #{Time.now.strftime('%d/%m/%Y')}"
  end
end
