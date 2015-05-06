require 'spec_helper'
require 'rails_helper'
require 'sucker_punch/testing/inline'

describe "Slack integration" do
  before { @original_token = ENV['slack_token'] }
  after { ENV['slack_token'] = @original_token }
  let(:url){"https://hashrocket.slack.com/services/hooks/slackbot?channel=%23til&token=fake_token"}

  it "Sends a message when creating a post" do
    req = stub_request(:post,url)
    ENV['slack_token'] = "fake_token"
    expect{FactoryGirl.create :post}.not_to raise_error
    expect(req).to have_been_requested
  end

  it "Does not send message when there is no token" do
    ENV['slack_token'] = ""
    expect{FactoryGirl.create :post}.not_to raise_error
    # Web mock will blow up if an unknown request would have been made
  end

  it "Fails when slack api returns error" do
    ENV['slack_token'] = "fake_token"
    req = stub_request(:post,url).to_return(status: 499)
    expect{FactoryGirl.create :post}.to raise_error(/499/)
    expect(req).to have_been_requested
  end
end
