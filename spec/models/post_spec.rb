require 'rails_helper'

describe Post do
  let(:post) { FactoryGirl.create(:post) }
  let(:valid_title) { 'today-i-learned-about-clojure' }

  it 'should have a valid factory' do
    expect(post).to be_valid
  end

  it 'should require a body' do
    post.body = ''
    expect(post).to_not be_valid
  end

  it 'should require a developer' do
    post.developer = nil
    expect(post).to_not be_valid
  end

  it 'should require a tag' do
    post.tag = nil
    expect(post).to_not be_valid
  end

  it 'should require a title' do
    post.title = nil
    expect(post).to_not be_valid
  end

  it 'should reject a title that is more than fifty chars' do
    post.title = 'a' * 51
    expect(post).to_not be_valid
  end

  it 'should create a slug' do
    expect(post.slug).to be
  end

  it 'should create a slug with dashes' do
    post.title = 'Today I learned about clojure'
    expect(post.send(:slugified_title)).to eq valid_title
  end

  it 'should remove whitespace from slug' do
    post.title = '  Today I             learned about clojure   '
    expect(post.send(:slugified_title)).to eq valid_title
  end

  it 'should not allow punctuation in slug' do
    post.title = 'Today I! learned? about #clojure'
    expect(post.send(:slugified_title)).to eq valid_title
  end

  it 'should not allow a body longer than 200 words' do
    post.body = 'word ' * 201
    expect(post).to_not be_valid
    expect(post.errors.messages[:body]).to eq ['of this post is too long. It is 1 word over the limit of 200 words']

    post.body = 'word ' * 300
    expect(post).to_not be_valid
    expect(post.errors.messages[:body]).to eq ['of this post is too long. It is 100 words over the limit of 200 words']

    post.body = 'word ' * 400
    expect(post).to_not be_valid
    expect(post.errors.messages[:body]).to eq ['of this post is too long. It is 200 words over the limit of 200 words']
  end

  context 'it should count its words' do
    it 'with trailing spaces' do
      post = FactoryGirl.create(:post, body: 'word ' * 150)
      expect(post.send(:word_count)).to eq 150
    end

    it 'with no trailing spaces' do
      post = FactoryGirl.create(:post, body: ('word ' * 150).strip)
      expect(post.send(:word_count)).to eq 150
    end

    it 'with one word' do
      post = FactoryGirl.create(:post, body: 'word')
      expect(post.send(:word_count)).to eq 1
    end
  end

  context 'it should know how many words are available' do
    it 'with trailing spaces' do
      post = FactoryGirl.create(:post, body: 'word ' * 150)
      expect(post.send(:words_remaining)).to eq 50
    end

    it 'with no trailing spaces' do
      post = FactoryGirl.create(:post, body: ('word ' * 150).strip)
      expect(post.send(:words_remaining)).to eq 50
    end

    it 'with one word' do
      post = FactoryGirl.create(:post, body: 'word')
      expect(post.send(:words_remaining)).to eq 199
    end

    it 'with too many words' do
      post = FactoryGirl.build(:post, body: 'word ' * 300)
      expect(post.send(:words_remaining)).to eq -100
    end
  end
end
