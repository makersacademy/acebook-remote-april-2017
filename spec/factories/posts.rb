FactoryGirl.define do
  factory :post do
    before(:create) do |post|
      FactoryGirl.reload
      user = FactoryGirl.create(:user, :me)
      post.user_id = user.id
    end
    message 'Hello, world!'
  end
end
