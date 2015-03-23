Feature: Visitor views page for a tag

  Scenario: Happy path
    Given I am a visitor
    And a tag exists
    And there are TILs with that tag
    When I visit '/that tag'
    Then I see all posts tagged with that tag

  Scenario: Sad path (no posts)
    Given I am a visitor
    And a tag exists
    And there are no TILs with that tag
    When I visit '/that tag'
    Then I see a message "No posts."

  Scenario: Visitor clicks tag from post
    Given I am a visitor
    And a tag exists
    And there is a TIL with that tag
    And I visit the homepage
    When I click the tag
    Then I see the post tagged with that tag
