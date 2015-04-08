FactoryGirl.define do
  factory :developer do
    sequence :email do |n|
      "developer#{n}@hashrocket.com"
    end

    sequence :username do |n|
      "username#{n}"
    end
  end
end
