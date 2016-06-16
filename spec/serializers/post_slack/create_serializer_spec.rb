require 'rails_helper'

RSpec.describe PostSlack::CreateSerializer, type: :serializer do

  def serialize_post(post)
    serializer = PostSlack::CreateSerializer.new(post)
    JSON.parse(serializer.to_json)['text']
  end

  context 'Serialized resource' do
    it 'is correct' do
      developer = FactoryGirl.build(:developer, username: 'tpope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serialized = serialize_post(post)
      expected_text = 'tpope created a new post - <http://www.example.com/'\
      'posts/sluggishslug-entitled-title|entitled title> #hacking'

      expect(serialized).to eql(expected_text)
    end

    it 'includes Slack display name' do
      developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')
      post = FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        channel: FactoryGirl.create(:channel, name: 'hacking')
                       )

      serialized = serialize_post(post)
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

      serialized = serialize_post(post)
      expected_text = 'Tim Pope created a new post - <http://www.example.com/'\
      'posts/38fe87b97c-the-picture-div-elements-are-here-to-stay|The `&lt;picture&gt;` &amp; `&lt;div&gt;` elements are here to stay!> #hacking'

      expect(serialized).to eql(expected_text)
    end

    context 'milestone events' do
      it 'includes a message when a milestone occurs' do
        developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')

        FactoryGirl.create_list(:post, 99, published_at: Time.now)
        post = FactoryGirl.create(:post,
                          slug: 'sluggishslug',
                          body: 'learned some things',
                          developer: developer,
                          title: 'entitled title',
                          channel: FactoryGirl.create(:channel, name: 'hacking'),
                          published_at: Time.now
                         )

        serialized = serialize_post(post)
        expected_text = 'This is the 100th post to Today I Learned! Tim Pope created a new post '\
        '- <http://www.example.com/posts/sluggishslug-entitled-title|entitled title> #hacking'

        expect(serialized).to eql(expected_text)
      end

      it 'does not include a message when a regular thing occurs' do
        developer = FactoryGirl.build(:developer, username: 'tpope', slack_name: 'Tim Pope')

        FactoryGirl.create_list(:post, 100, published_at: Time.now)
        post = FactoryGirl.create(:post,
                          slug: 'sluggishslug',
                          body: 'learned some things',
                          developer: developer,
                          title: 'entitled title',
                          channel: FactoryGirl.create(:channel, name: 'hacking'),
                          published_at: Time.now
                         )

        serialized = serialize_post(post)
        expected_text = 'Tim Pope created a new post '\
        '- <http://www.example.com/posts/sluggishslug-entitled-title|entitled title> #hacking'

        expect(serialized).to eql(expected_text)
      end
    end

    it 'escapes quotes' do
      developer = FactoryGirl.build(:developer, username: 'tpope')
      post = FactoryGirl.create(:post, title: 'Let me prepare you a "quote"')

      serialized = serialize_post(post)
      expected_text = 'Let me prepare you a "quote"'

      expect(serialized).to include(expected_text)
    end
  end
end
