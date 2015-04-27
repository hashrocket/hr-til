require "rails_helper"

describe PostHelper do
  describe "#tweet_link" do
    it "returns a link to twitter" do
      developer = FactoryGirl.create(:developer)
      tag = FactoryGirl.create(:tag)
      @post = FactoryGirl.create(:post, tag: tag, developer: developer)
      @post.slug = '1234'
      @post.save!

      expected_result = "<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-text=\"Today I learned: Web Development\" data-via=\"hashrocket\" data-hashtags=\"phantomjs\" data-url=\"http://example.com/posts/1234-web-development\">Tweet</a>"

      expect(helper.tweet_link(@post)).to eq expected_result
    end

    it "returns a link to twitter with developer's twitter handle" do
      developer = FactoryGirl.create(:developer, twitter_handle: 'awesome_handle')
      tag = FactoryGirl.create(:tag)
      @post = FactoryGirl.create(:post, tag: tag, developer: developer)
      @post.slug = '1234'
      @post.save!

      expected_result = "<a href=\"http://twitter.com/share\" class=\"twitter-share-button\" data-text=\"Today I learned: Web Development\" data-via=\"awesome_handle\" data-hashtags=\"phantomjs\" data-url=\"http://example.com/posts/1234-web-development\">Tweet</a>"

      expect(helper.tweet_link(@post)).to eq expected_result
    end
  end
end
