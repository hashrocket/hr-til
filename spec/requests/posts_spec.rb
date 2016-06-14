require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "Post serialization" do
      let(:developer) { FactoryGirl.create(:developer, username: 'foousername') }
      let(:channel) { FactoryGirl.create(:channel, name: 'foo') }
      let!(:post1) do
        FactoryGirl.create(:post, {
          body: 'foo `body`',
          title: 'foo title',
          slug: 'foo slug',
          likes: 1,
          published_at: Time.now,
          developer: developer,
          channel: channel
        })
      end

    describe "GET /posts.json" do
      it "posts are serialized to json upon request" do
        get posts_path(format: :json)
        expect(response).to have_http_status(200)

        parsed_body = JSON.parse(response.body)
        expect(parsed_body['posts'].count).to eq(1)

        our_post = parsed_body['posts'].first

        expect(our_post['body']).to eq("<p>foo <code>body</code></p>\n")
        expect(our_post['title']).to eq('foo title')
        expect(our_post['slug']).to eq('foo slug')
        expect(our_post['likes']).to eq(1)
        expect(our_post['developer']['username']).to eq('foousername')
        expect(our_post['developer']['email']).to eq(nil)
        expect(our_post['channel']['name']).to eq('foo')
      end
    end

    describe "GET /post.json" do
      it "posts are serialized to json upon request" do

        get post_path(titled_slug: post1.to_param, format: :json)
        expect(response).to have_http_status(200)

        parsed_body = JSON.parse(response.body)
        our_post = parsed_body['post']

        expect(our_post['body']).to eq("<p>foo <code>body</code></p>\n")
        expect(our_post['title']).to eq('foo title')
        expect(our_post['slug']).to eq('foo slug')
        expect(our_post['likes']).to eq(1)
        expect(our_post['developer']['username']).to eq('foousername')
        expect(our_post['developer']['email']).to eq(nil)
        expect(our_post['channel']['name']).to eq('foo')
      end
    end
  end
end
