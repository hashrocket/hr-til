require 'rails_helper'

describe Post do
  let (:developer) { create(:developer) }
  let (:tag) { create(:tag) }

  it 'accepts valid parameters' do
    post = create(:post, developer: developer)

    expect(post).to be
    expect(post).to be_valid
    expect(post.developer_username).to eq('johndoe')
  end

  it 'validates body length' do
    post = Post.create(developer: developer, body: 'word ' * 201)

    expect(post).to_not be_valid
  end

  it 'belongs to a tag' do
    post = create(:post, developer: developer, tag_id: tag.id)

    expect(post).to be
    expect(post.tag_id).to eq(tag.id)
    expect(post.tag_name).to eq('Phantomjs')
  end
end
