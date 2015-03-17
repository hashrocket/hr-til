require 'rails_helper'

describe Developer do
  it 'accepts valid parameters' do
    developer = create(:developer)
    expect(developer).to be
    expect(developer).to be_valid
  end

  it 'validates username uniqueness' do
    developer     = Developer.create(username: 'johndoe', email: 'johndoe@ha$hrocket.com', password: 'password', password_confirmation: 'password')
    dup_developer = Developer.create(username: 'johndoe', email: 'tom@ha$hrocket.com', password: 'password', password_confirmation: 'password')

    expect(developer).to be
    expect(developer).to be_valid
    expect(dup_developer).to_not be_valid
  end

  it 'validates username format' do
    developer             = Developer.create(username: 'foobar', email: 'johndoe@ha$hrocket.com', password: 'password', password_confirmation: 'password')
    punctuation_developer = Developer.create(username: 'f.oba$', email: 'johndoe@ha$hrocket.com', password: 'password', password_confirmation: 'password')

    expect(developer).to be_valid
    expect(punctuation_developer).to_not be_valid
  end
end
