require 'rails_helper'

describe PostsController do
  describe '#create' do

    let(:developer) { FactoryGirl.create :developer }

    before do
      controller.sign_in developer
    end

    it 'denies non-whitelisted attributes' do
      post_attributes = FactoryGirl.build(:post).attributes

      bad_attrs = {
        slug: '12345',
        id: 999,
        developer_id: 3,
        likes: 9,
        tweeted: true,
        max_likes: 10
      }

      post_attributes.merge!(bad_attrs)

      post :create, params: { post: post_attributes }

      last_post = Post.last
      bad_attrs.each do |k, v|
        expect(last_post[k.to_s]).to_not eq v
      end
    end
  end

  describe '#update' do
    let(:not_my_post) { FactoryGirl.create :post }

    context 'as a developer' do
      let(:developer) { FactoryGirl.create :developer }

      before do
        controller.sign_in developer
      end

      it 'only allows me to update my own posts' do
        expect do
          patch :update, {
            params: {
              titled_slug: not_my_post.to_param,
              post: { title: 'HAXORD' }
            }
          }
        end.to_not change { not_my_post.reload.title }
      end

      it 'denies non-whitelisted attributes' do
        existing_post = FactoryGirl.create(:post, tweeted: false, developer: developer)
        post_attributes = existing_post.attributes

        bad_attrs = { 'slug' => '12345',
          'id' => 999,
          'developer_id' => 3,
          'likes' => 9,
          'tweeted' => true,
          'max_likes' => 10
        }

        post_attributes.merge!(bad_attrs)

        put :update, params: {
          titled_slug: existing_post.to_param,
          post: post_attributes
        }

        last_post = Post.last
        bad_attrs.each do |k, v|
          expect(last_post[k]).to_not eq v
        end
      end
    end

    context 'as an admin' do
      let(:admin) { FactoryGirl.create :developer, admin: true }

      before do
        controller.sign_in admin
      end

      it 'allows me to update anyones post' do
        expect do
          patch :update, params: {
            titled_slug: not_my_post.to_param,
            post: { title: 'this is ok' }
          }
        end.to change { not_my_post.reload.title }
      end
    end
  end

  describe '#show' do
    it 'is a 404 when the post is not there' do
      expect do
        get :show, params: { titled_slug: 'asdf' }
      end.to raise_error ActiveRecord::RecordNotFound
    end
  end

  describe '#show' do
    render_views

    context 'with markdown extension' do
      it 'returns raw content' do
        developer = FactoryGirl.create(:developer, username: 'jackdonaghy')

        raw_post = FactoryGirl.create(:post,
          body: 'Raw content here',
          published_at: Time.new(2016, 01, 01, 12),
          developer: developer,
          title: 'Plaintext Title'
        )

        get :show, params: { titled_slug: raw_post.to_param, format: 'md' }

        expected = <<-RAW
Plaintext Title

Raw content here

jackdonaghy
January 1, 2016
RAW

        expect(response.body).to eq expected
        expect(response.headers).to include('X-Robots-Tag')
        expect(response.headers['X-Robots-Tag']).to eq 'noindex'
      end

      it 'returns sanitized characters' do
        developer = FactoryGirl.create(:developer, username: 'jackdonaghy')

        raw_post = FactoryGirl.create(:post,
          body: 'Raw "quotes" here',
          published_at: Time.new(2016, 01, 01, 12),
          developer: developer,
          title: '"Quotable" Title'
        )

        get :show, params: { titled_slug: raw_post.to_param, format: 'md' }

        expected = <<-RAW
"Quotable" Title

Raw "quotes" here

jackdonaghy
January 1, 2016
RAW

        expect(response.body).to eq expected
      end
    end
  end

  describe '#drafts' do

    before do
      controller.sign_in developer
    end

    context 'when I am a non-admin' do

      let(:developer) { FactoryGirl.create :developer }
      let(:rando) { FactoryGirl.create :developer }

      it 'lists only my drafts' do
        FactoryGirl.create_list :post, 3, developer: developer
        FactoryGirl.create_list :post, 3, :draft, developer: developer

        FactoryGirl.create_list :post, 3, developer: rando
        FactoryGirl.create_list :post, 3, :draft, developer: rando
        get :drafts

        expect(assigns(:posts).length).to eq(3)
      end
    end

    context 'when I am an admin developer' do

      let(:developer) { FactoryGirl.create :developer, admin: true }
      let(:rando) { FactoryGirl.create :developer }

      it 'lists all drafts' do
        FactoryGirl.create_list :post, 3, developer: developer
        FactoryGirl.create_list :post, 3, :draft, developer: developer

        FactoryGirl.create_list :post, 3, developer: rando
        FactoryGirl.create_list :post, 3, :draft, developer: rando
        get :drafts

        expect(assigns(:posts).length).to eq(6)
      end
    end
  end
end
