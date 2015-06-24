require 'rails_helper'

describe OAuthInfo do
  let (:oauth) { described_class.new('info' => { 'name' => 'john doe' }) }

  it "should generate a username from the developer's oauth name" do
    assert_equal oauth.username, 'johndoe'
  end
end
