require 'rails_helper'

describe Developer do
  it 'should have a valid factory' do
    developer = FactoryGirl.build(:developer)
    expect(developer).to be_valid
  end

  it 'should require a username' do
    developer = FactoryGirl.build(:developer, username: '')
    expect(developer).to_not be_valid
  end

  it 'should require an email' do
    developer = FactoryGirl.build(:developer, email: '')
    expect(developer).to_not be_valid
  end

  it 'should validate username uniqueness' do
    developer = FactoryGirl.create(:developer, username: 'foo_bar')
    dup_developer = FactoryGirl.build(:developer, username: 'foo_bar')

    expect(dup_developer).to_not be_valid
  end
end
