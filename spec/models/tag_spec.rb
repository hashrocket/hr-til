require 'rails_helper'

describe Tag do
  it 'accepts valid parameters' do
    tag = create(:tag)

    expect(tag).to be
    expect(tag).to be_valid
    expect(tag.name).to eq("phantomjs")
  end
end
