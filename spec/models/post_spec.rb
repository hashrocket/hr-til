require 'rails_helper'

describe Post do
  let (:developer) { create(:developer) }
  let (:tag) { create(:tag) }

  it 'accepts valid parameters' do
    post = create(:post, developer: developer, tag: tag)

    expect(post).to be
    expect(post).to be_valid
    expect(post.developer_username).to eq('johndoe')
    expect(post.tag_name).to eq('phantomjs')
  end

  it 'validates body length' do
    post = Post.create(developer: developer, tag: tag, body: 'word ' * 201)

    expect(post).to_not be_valid
  end

  it 'creates a title from the first newline' do
    post = Post.create(developer: developer, tag: tag, body: "First line\nSecond line")

    expect(post.title).to eq('First line')
  end

  it 'creates a title from the first fifty chararcters' do
    post = Post.create(developer: developer, tag: tag, body: "code " * 10 + "extra content")

    expect(post.title).to eq('code code code code code code code code code code...')
  end
end
