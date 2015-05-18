require 'rails_helper'

describe PostsController do
  describe '#update' do
    let(:a_post) { FactoryGirl.create :post }
    let(:developer) { FactoryGirl.create :developer }
    before { controller.sign_in developer }

    context 'as a developer' do
      it 'only allows me to update my own posts' do
        expect do
          patch :update, titled_slug: a_post.to_param, post: {title: 'HAXORD'}
        end.to_not change { a_post.reload.title }
      end
    end

    context 'as an admin' do
      let(:developer) { FactoryGirl.create :developer, admin: true }

      it 'allows me to update anyones post' do
        expect do
          patch :update, titled_slug: a_post.to_param, post: {title: 'this is ok'}
        end.to change { a_post.reload.title }
      end
    end
  end

  describe '#show' do
    it 'is a 404 when the post is not there' do
      expect do
        get :show, titled_slug: 'asdf'
      end.to raise_error ActiveRecord::RecordNotFound
    end
  end
end
