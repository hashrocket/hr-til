require 'rails_helper'

describe PostHelper do
  describe '#tweet_link' do
    it 'returns a link to twitter' do
      stub_const('ENV', { 'default_twitter_handle' => 'twitter_handle' })

      @post = FactoryGirl.create(:post)
      @post.slug = '1234'
      @post.save!

      expected_result = "<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-text=\"Today I learned: Web Development\" data-via=\"twitter_handle\" data-hashtags=\"phantomjs\" data-url=\"http://www.example.com/posts/1234-web-development\">Tweet</a>"

      expect(helper.tweet_link(@post)).to eq expected_result
    end

    it "returns a link to twitter with developer's twitter handle" do
      developer = FactoryGirl.create(:developer, twitter_handle: 'awesomehandle')
      @post = FactoryGirl.create(:post, developer: developer)
      @post.slug = '1234'
      @post.save!

      expected_result = "<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-text=\"Today I learned: Web Development\" data-via=\"awesomehandle\" data-hashtags=\"phantomjs\" data-url=\"http://www.example.com/posts/1234-web-development\">Tweet</a>"

      expect(helper.tweet_link(@post)).to eq expected_result
    end
  end
end
