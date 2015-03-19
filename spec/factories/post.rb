FactoryGirl.define do
  factory :post do
    body "Today I learned about web development"
  end

  trait :for_tomorrow do
    created_at Time.now + 1.day
  end

  trait :for_next_week do
    created_at Time.now + 1.week
  end
end
