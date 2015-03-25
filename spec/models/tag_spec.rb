require 'rails_helper'

describe Tag do
  it 'should have a valid factory' do
    tag = FactoryGirl.build(:tag)
    expect(tag).to be_valid
  end
end
