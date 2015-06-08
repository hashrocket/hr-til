Feature: Visitor likes post

  @javascript
  Scenario: Visitor likes post
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And the Like count is zero
    When I click the Like count 
    Then the Like count is one

  @javascript
  Scenario: Visitor toggles like
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And the Like count is zero
    When I click the Like count
    Then the Like count is one
    When I click the Like count
    Then the Like count is zero
