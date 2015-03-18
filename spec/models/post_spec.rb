require 'rails_helper'

describe Post do
  let (:developer) { create(:developer) }

  it 'accepts valid parameters' do
    post = create(:post, developer: developer)
    expect(post).to be
    expect(post).to be_valid
  end

  it 'validates body length' do
    post = Post.create(developer: developer, body: 'word ' * 201)
    expect(post).to_not be_valid
  end
end
