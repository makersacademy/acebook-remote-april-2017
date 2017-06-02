FactoryGirl.define do
  factory :comment do
    before(:create) do |comment|
      FactoryGirl.reload
      post = FactoryGirl.create(:post)
      comment.post_id = post.id
    end
    body 'Coment'
  end
end
