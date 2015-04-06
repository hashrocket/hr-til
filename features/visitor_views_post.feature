Feature: Visitor views post

  Scenario: Visitor clicks on post title
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
