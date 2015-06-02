Feature: Visitor searches posts

  Scenario:
    Given a post exists with the body "Needles are the thing we want"
    And a post exists with the body "But what about all this hay?"
    And I visit the homepage
    When I search for "needle"
    Then I only see the "Needles" post
