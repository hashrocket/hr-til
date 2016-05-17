require 'rails_helper'

RSpec.describe PostSlack::CreateSerializer, type: :serializer do
  context 'Individual Resource Representation' do
    it 'is serialized correctly' do
      developer = FactoryGirl.build(:developer, username: 'tpope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serializer = PostSlack::CreateSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      expected_text = 'tpope created a new post - <http://www.example.com/'\
      'posts/sluggishslug-entitled-title|entitled title> #hacking'

      expect(serialized).to eql(expected_text)
    end

    it 'is serialized and includes Slack display name' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serializer = PostSlack::CreateSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      expected_text = 'Tim Pope created a new post - <http://www.example.com/'\
      'posts/sluggishslug-entitled-title|entitled title> #hacking'

      expect(serialized).to eql(expected_text)
    end

    it 'encodes 3 special Slack characters as HTML entities' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      post = FactoryGirl.build(:post,
                        slug: '38fe87b97c',
                        body: 'learned some things',
                        developer: developer,
                        title: 'The `<picture>` & `<div>` elements are here to stay!',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serializer = PostSlack::CreateSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      expected_text = 'Tim Pope created a new post - <http://www.example.com/'\
      'posts/38fe87b97c-the-picture-div-elements-are-here-to-stay|The `&lt;picture&gt;` &amp; `&lt;div&gt;` elements are here to stay!> #hacking'

      expect(serialized).to eql(expected_text)
    end

    it 'is serialized and includes milestone events' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      FactoryGirl.create(:post)
      FactoryGirl.create_list(:post, 99, published_at: Time.now)
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serializer = PostSlack::CreateSerializer.new(post)
      serialized = JSON.parse(serializer.to_json)['text']

      expected_text = 'This is the 100th post to Today I Learned! Tim Pope created a new post '\
      '- <http://www.example.com/posts/sluggishslug-entitled-title|entitled title> #hacking'

      expect(serialized).to eql(expected_text)
    end
  end
end
