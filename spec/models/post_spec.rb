require 'rails_helper'

describe Post do
  let (:developer) { FactoryGirl.create(:developer) }
  let (:tag) { FactoryGirl.create(:tag) }

  it 'should have a valid factory' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag)
    expect(post).to be_valid
  end

  it 'should require a body' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag, body: '')
    expect(post).to_not be_valid
  end

  it 'should require a tag' do
    post = FactoryGirl.build(:post, developer: developer)
    expect(post).to_not be_valid
  end

  it 'should require a title' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag, title: nil)
    expect(post).to_not be_valid
  end

  it 'should reject a title that is too long' do
    post = FactoryGirl.build(:post, developer: developer, tag: tag, title: 'a' * 51 )
    expect(post).to_not be_valid
  end

end
