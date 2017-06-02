FactoryGirl.define do
  factory :post do
    before(:create) do |post|
      user = FactoryGirl.create(:user)
      post.user_id = user.id
    end
    message 'Hello, world!'
  end
end
