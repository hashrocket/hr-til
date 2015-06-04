require 'rails_helper'

RSpec.describe PostSlack::LikesThresholdSerializer, type: :serializer do
  context 'Individual Resource Representation' do
    let(:post) do
      developer = FactoryGirl.build(:developer,
                                    username: 'tpope')
      FactoryGirl.build(:post,
                        slug: 'sluggishslug',
                        body: 'learned some things',
                        developer: developer,
                        title: 'entitled title',
                        likes: 10
                       )
    end

    let(:serializer) { PostSlack::LikesThresholdSerializer.new(post) }

    let(:serialized) do
      JSON.parse(serializer.to_json)['text']
    end

    it 'is serialized correctly' do
      expected_text = /tpope's post has 10 likes! - <http:\/\/www.example.com\/posts\/sluggishslug-entitled-title|entitled title>/
      expect(serialized).to match expected_text
    end
  end
end
