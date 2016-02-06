FactoryGirl.define do
  factory :developer do
    sequence :email do |n|
      "developer#{n}@example.com"
    end

    sequence :username do |n|
      "username#{n}"
    end
  end
end
