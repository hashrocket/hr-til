require 'rails_helper'

RSpec.describe PostSlack::LikesThresholdSerializer, type: :serializer do
  context 'Individual Resource Representation' do
    it 'is serialized correctly' do
      developer = FactoryGirl.build(:developer,
                                    username: 'tpope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        likes: 10
                       )

      serializer = PostSlack::LikesThresholdSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      result = "tpope's post has 10 likes! 🎉 - <http://www.example.com/"\
      "posts/sluggishslug-entitled-title|entitled title>"

      expect(serialized).to eq result
    end

    it 'is serialized correctly and includes Slack display name' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        likes: 10
                       )

      serializer = PostSlack::LikesThresholdSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      result = "Tim Pope's post has 10 likes! 🎉 - <http://www.example.com/"\
      "posts/sluggishslug-entitled-title|entitled title>"

      expect(serialized).to eq result
    end
  end
end
