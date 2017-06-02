FactoryGirl.define do

  factory :user do
    email 'test1@test.com'
    password 'password'
  end

  trait :me do
    email "example@example.com"
    password "password"
    password_confirmation"password"
  end

  trait :friend do
    email "friend@example.com"
    password "password"
    password_confirmation"password"
  end

end
