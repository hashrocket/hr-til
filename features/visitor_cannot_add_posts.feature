Feature: Visitor cannot add posts

  Scenario:
    Given I am a visitor
    When I try to add a post
    And I see an error message "Access denied" 
