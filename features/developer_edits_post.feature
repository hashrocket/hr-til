Feature: Developer edits post

  Scenario: Developer edits post
    Given I am a signed in developer
    And I have a post
    And I visit the homepage
    When I click edit
    Then I see the edit page for that post
    When I enter new information into that form
    And I click submit
    Then I see the show page for that edited post
