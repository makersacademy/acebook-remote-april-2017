require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to be }
  let(:user){ create :user, :me }

  it 'valid user' do
    expect(user.valid?).to be(true)
  end

  it{ should have_many(:friendships)}

  it{ should have_many(:friends)}

end
