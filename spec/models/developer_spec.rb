require 'rails_helper'

describe Developer do
  let(:developer) { FactoryGirl.create(:developer) }

  it 'should have a valid factory' do
    expect(developer).to be_valid
  end

  it 'should require a username' do
    developer.username = ''
    expect(developer).to_not be_valid
  end

  it 'should require an email' do
    developer.email = ''
    expect(developer).to_not be_valid
  end

  it 'should validate username uniqueness' do
    dup_developer = FactoryGirl.build(:developer, username: developer.username)
    expect(dup_developer).to_not be_valid
    expect(dup_developer.errors.messages[:username]).to eq ['has already been taken']
  end

  context 'twitter username should be valid' do
    it 'should be alphanumeric' do
      developer.twitter_handle = 'abc...'
      expect(developer).to_not be_valid
    end

    it 'should not be all numbers' do
      developer.twitter_handle = '999'
      expect(developer).to_not be_valid
    end

    it 'should not be more than 15 characters' do
      developer.twitter_handle = 'a' * 16
      expect(developer).to_not be_valid
    end

    it 'should remove a leading @ symbol' do
      developer.twitter_handle = '@hashrocket'
      expect(developer.twitter_handle).to eq 'hashrocket'
    end
  end
end
