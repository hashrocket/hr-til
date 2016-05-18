require 'rails_helper'

RSpec.describe PostSlack::LikesThresholdSerializer, type: :serializer do

  def serialize_post(post)
    serializer = PostSlack::LikesThresholdSerializer.new(post)
    JSON.parse(serializer.to_json)['text']
  end

  context 'a generic example' do
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

      serialized = serialize_post(post)
      result = "tpope's post has 10 likes! 🎉 - <http://www.example.com/"\
      "posts/sluggishslug-entitled-title|entitled title>"

      expect(serialized).to eq result
    end
  end

  context 'with a Slack display name' do
    it 'is serialized with the Slack display name' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        likes: 10
                       )

      serialized = serialize_post(post)
      result = "Tim Pope's post has 10 likes! 🎉 - <http://www.example.com/"\
      "posts/sluggishslug-entitled-title|entitled title>"

      expect(serialized).to eq result
    end
  end

  context 'with characters that must be escaped in Slack' do
    it 'is serialized with special Slack characters encoded as HTML entities' do
      developer = FactoryGirl.build(:developer, username: 'tpope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'The `<picture>` & `<div>` elements are here to stay!',
                        likes: 10
                       )

      serialized = serialize_post(post)
      expected_text = "tpope's post has 10 likes! 🎉 - <http://www.example.com/"\
      "posts/sluggishslug-the-picture-div-elements-are-here-to-stay|The `&lt;picture&gt;` "\
      "&amp; `&lt;div&gt;` elements are here to stay!>"

      expect(serialized).to eql(expected_text)
    end

    it 'is serialized with escaped quotes' do
      developer = FactoryGirl.build(:developer, username: 'tpope')
      post = FactoryGirl.create(:post, title: 'Let me prepare you a "quote"')

      serialized = serialize_post(post)
      expected_text = 'Let me prepare you a "quote"'

      expect(serialized).to include(expected_text)
    end
  end
end
