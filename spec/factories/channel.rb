FactoryGirl.define do
  factory :channel do
    name 'phantomjs'
    twitter_hashtag 'phantomjs'
  end

  factory :ruby_channel, class: Channel do
    name 'ruby'
    twitter_hashtag 'ruby'
  end
end
