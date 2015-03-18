FactoryGirl.define do
  factory :post do
    body "Today I learned about web development"
  end

  trait :for_yesterday do
    created_at Time.zone.now - 1.day
  end

  trait :for_last_week do
    created_at Time.zone.now - 1.week
  end
end
