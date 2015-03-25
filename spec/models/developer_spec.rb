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

  it 'should require a password' do
    developer = FactoryGirl.build(:developer, password: '')
    expect(developer).to_not be_valid
  end

  it 'should require a password confirmation' do
    developer = FactoryGirl.build(:developer, password: 'password', password_confirmation: '')
    expect(developer).to_not be_valid
  end

  it 'should validate username format' do
    developer = FactoryGirl.build(:developer, username: 'foo_bar')
    expect(developer).to_not be_valid
  end

  it 'should validate username presence' do
    developer = FactoryGirl.build(:developer, username: 'foo_bar')
    dup_developer = FactoryGirl.build(:developer, username: 'foo_bar')
    expect(dup_developer).to_not be_valid
  end
end
