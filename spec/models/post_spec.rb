require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time and date' do
    new_post = Post.new(message: "thing", created_at: Time.now)
    expect(new_post.local_time_stamp).to eq "#{Time.now.strftime('%H:%M')}"
    expect(new_post.local_date_stamp).to eq "#{Time.now.strftime('%d/%m/%Y')}"
  end
end
