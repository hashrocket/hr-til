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

  Scenario: Channel list excludes drafts
    Given I am a visitor
    And three posts exist, one a draft, in the same channel
    When I visit the channel page
    Then I see only 2 published posts
