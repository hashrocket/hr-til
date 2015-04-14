require 'rails_helper'

describe DeveloperDecorator do

  let(:developer) { FactoryGirl.create(:developer) }
  let(:tag) { FactoryGirl.create(:tag) }
  let(:decorator) { developer.decorate }

  describe '.posts_count' do

    it 'should return nil if there are no posts for that tag' do
      expect(decorator.posts_count).to eq nil
    end

    it 'should return the count and a singular noun when there is one post' do
      FactoryGirl.create(:post, tag: tag, developer: developer)

      expect(decorator.posts_count).to eq("(1 post)")
    end

    it 'should return the count and a plural noun when there are multiple posts' do
      3.times { FactoryGirl.create(:post, tag: tag, developer: developer) }

      expect(decorator.posts_count).to eq("(3 posts)")
    end
  end
end
