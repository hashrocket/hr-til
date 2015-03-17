FactoryGirl.define do
  factory :developer do
    sequence :email do |n|
      "developer#{n}@hashrocket.com"
    end

    username "johndoe"
    password "ha$hrocket"
    password_confirmation "ha$hrocket"
  end
end
