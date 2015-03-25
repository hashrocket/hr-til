require 'rails_helper'

describe Post do
  let (:developer) { FactoryGirl.create(:developer) }
  let (:tag) { FactoryGirl.create(:tag) }

  it 'should have a valid factory' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag)
    expect(developer).to be_valid
  end

  it 'should require a body' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag, body: '')
    expect(post).to_not be_valid
  end

  it 'should require a tag' do
    post = FactoryGirl.build(:post, developer: developer)
    expect(post).to_not be_valid
  end

  it 'should create a title from the first newline' do
    post = Post.create(developer: developer, tag: tag, body: "First line\nSecond line")
    expect(post.title).to eq('First line')
  end

  it 'should create a title from the first fifty characters' do
    post = Post.create(developer: developer, tag: tag, body: 'code ' * 10 + 'extra content')

    expect(post.title).to eq('code code code code code code code code code code...')
  end
end
