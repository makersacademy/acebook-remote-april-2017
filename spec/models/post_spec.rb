require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time and date' do
    date_time = Time.now.strftime('%H:%M')
    expect(Post.new.post_time.strftime('%H:%M')).to eq date_time
  end
end
