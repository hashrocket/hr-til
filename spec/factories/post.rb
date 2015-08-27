FactoryGirl.define do
  factory :post do
    title 'Web Development'
    body 'Today I learned about web development'
    developer { FactoryGirl.create(:developer) }
    channel { FactoryGirl.create(:channel) }
    published true
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

  trait :for_last_year do
    created_at Time.now - 1.year
  end

  trait :with_punctuated_title do
    title "It's Friday & Stuff"
  end

  trait :published do
    published true
  end

  trait :draft do
    published false
  end
end
