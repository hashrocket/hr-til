FactoryGirl.define do
  factory :post do
    body "Today I learned about web development"
  end

  trait :for_today do
    # noop
  end

  trait :for_yesterday do
    created_at Time.now - 1.day
  end

  trait :for_last_week do
    created_at Time.now - 1.week
  end
end
