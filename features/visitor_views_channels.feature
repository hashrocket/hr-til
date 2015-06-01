Feature: Visitor views channels

  Scenario: Posts exist
    Given I am a visitor
    And a channel exists
    And there are posts in that channel
    When I visit '/that channel'
    Then I see all posts with that channel

  Scenario: Visitor clicks channel name from post
    Given I am a visitor
    And a channel exists
    And there are posts in that channel
    And I visit the homepage
    When I click the channel
    Then I see all posts with that channel
