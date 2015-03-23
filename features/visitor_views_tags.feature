Feature: Visitor views page for a tag

  Scenario: Happy path
    Given I am a visitor
    And a tag exists
    And there are TILs with that tag
    When I visit url http://domain/phantomjs
    Then I see all posts tagged phantomjs 

  Scenario: Sad path (no posts)
    Given I am a visitor
    And a tag exists
    And there are no TILs with that tag
    When I visit url http://domain/phantomjs
    Then I see a message "No posts."
