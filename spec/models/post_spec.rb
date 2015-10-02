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

  it 'should have a like count that defaults to one' do
    expect(post.likes).to eq 1
  end

  it 'should require a developer' do
    post.developer = nil
    expect(post).to_not be_valid
  end

  it 'should require a channel' do
    post.channel = nil
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

  it 'should create a slug without multiple dashes' do
    post.title = 'Today I learned --- about clojure'
    expect(post.send(:slugified_title)).to eq valid_title
  end

  it 'should remove whitespace from slug' do
    post.title = '  Today I             learned about clojure   '
    expect(post.send(:slugified_title)).to eq valid_title
  end

  it 'should not allow punctuation in slug' do
    post.title = 'Today I! learned? & $ % about #clojure'
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

  describe '.search' do
    it 'finds by developer' do
      needle = %w(brian jake).map do |author_name|
        FactoryGirl.create :post, developer: FactoryGirl.create(:developer, username: author_name)
      end.last

      expect(described_class.search('jake')).to eq [needle]
    end

    it 'finds by channel' do
      needle = %w(vim ruby).map do |channel_name|
        FactoryGirl.create :post, channel: FactoryGirl.create(:channel, name: channel_name)
      end.last

      expect(described_class.search('ruby')).to eq [needle]
    end

    it 'finds by title' do
      needle = %w(postgres sql).map do |title|
        FactoryGirl.create :post, title: title
      end.last

      expect(described_class.search('sql')).to eq [needle]
    end

    it 'finds by body' do
      needle = %w(postgres sql).map do |body|
        FactoryGirl.create :post, body: body
      end.last

      expect(described_class.search('sql')).to eq [needle]
    end

    it 'ranks matches by title, then developer or channel, then body' do
      posts = [
        FactoryGirl.create(:post, body: 'needle'),
        FactoryGirl.create(:post, channel: FactoryGirl.create(:channel, name: 'needle')),
        FactoryGirl.create(:post, developer: FactoryGirl.create(:developer, username: 'needle')),
        FactoryGirl.create(:post, title: 'needle')
      ].reverse

      ids = described_class.search('needle').pluck(:id)
      expect(ids[1..-2]).to match_array posts.map(&:id)[1..-2]
      expect([ids.first, ids.last]).to eq [posts.map(&:id).first, posts.map(&:id).last]
    end

    it 'breaks ties by post date' do
      FactoryGirl.create(:post, title: 'older', body: 'needle', created_at: 2.days.ago)
      FactoryGirl.create(:post, title: 'newer', body: 'needle')

      expect(described_class.search('needle').map(&:title)).to eq %w(newer older)
    end
  end

  it 'knows if its likes count is a factor of ten, ignoring zeroes' do
    method = :tens_of_likes?

    post.likes = 10
    expect(post.send(method)).to eq true

    post.likes = 11
    expect(post.send(method)).to eq false

    post.likes = 0
    expect(post.send(method)).to eq false
  end

  it 'should never have a negative like count' do
    post.likes = -1

    expect(post).to_not be_valid
  end

  context 'publish drafts' do
    describe '.published' do
      it 'cannot create more than one draft per developer' do
        post = FactoryGirl.create(:post, :draft)
        expect do
          Post.create(post.attributes)
        end.to raise_error(ActiveRecord::RecordNotUnique)
      end
    end

    describe '#publish' do
      it 'sets the post to published = true' do
        post.publish
        expect(post.published_at).to be
      end
    end
  end

  context 'slack integration on publication' do
    describe 'new post, published is true' do
      it 'should notify slack' do
        post = FactoryGirl.build(:post)

        expect(post).to receive(:notify_slack)
        post.save
      end
    end

    describe 'new post, published is false' do
      it 'should not notify slack' do
        post = FactoryGirl.build(:post, :draft)

        expect(post).to_not receive(:notify_slack)
        post.save
      end
    end

    describe 'existing post, published changes to true' do
      it 'should notify slack' do
        post = FactoryGirl.create(:post, :draft)
        post.published_at = Time.now

        expect(post).to receive(:notify_slack)
        post.save
      end
    end
  end
end
