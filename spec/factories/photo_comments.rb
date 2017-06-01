FactoryGirl.define do
  factory :photo_comment do
    commenter "MyString"
    body "MyText"
    photo nil
  end
end
