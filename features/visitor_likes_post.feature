Feature: Visitor likes post

  @javascript
  Scenario: Visitor clicks on post title
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And the Like Count is zero
    When I click Like
    Then the Like count is one
