Feature: Visitor cannot add or edit posts

  Scenario: Visitor cannot add posts
    Given I am a visitor
    When I try to add a post
    And I see an error message "Access denied"

  Scenario: Visitor cannot edit posts
    Given I am a visitor
    And a post exists
    When I try to edit that post
    And I see an error message "Access denied"
