require 'rails_helper'

describe OAuthInfo do
  let (:oauth) { described_class.new('info' => { 'name' => 'john doe' }) }
  let (:oauth_invalid_chars) { described_class.new('info' => { 'name' => 'john.doe' }) }

  context "should generate a username from the developer's oauth name" do
    it "should use the developer's oauth name if it is alphanumeric" do
      assert_equal oauth.username, 'johndoe'
    end

    it "should remove non-alphanumeric characters from developer's oauth name first" do
      assert_equal oauth_invalid_chars.username, 'johndoe'
    end
  end
end
