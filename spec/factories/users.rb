FactoryGirl.define do
  factory :user do
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
end
