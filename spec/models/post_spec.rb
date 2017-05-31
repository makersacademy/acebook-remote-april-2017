require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it 'has a time and date' do
    new_post = Post.new(message: "thing", created_at: Time.now)
    expect(new_post.print_time_stamp(new_post.created_at)).to eq "#{Time.now.strftime('%H:%M')}"
    expect(new_post.print_date_stamp(new_post.created_at)).to eq "#{Time.now.strftime('%d/%m/%Y')}"
  end
end
