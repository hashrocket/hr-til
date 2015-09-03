Feature: Visitor likes post

  @javascript
  Scenario: Visitor likes post
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see the likes count equals 1
    When I click the Like count
    Then I see the likes count equals 2

  @javascript
  Scenario: Visitor toggles like
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see the likes count equals 1
    When I click the Like count
    Then I see the likes count equals 2
    When I click the Like count
    Then I see the likes count equals 1

  @javascript
  Scenario: Visitor toggles like with multiple likes
    Given I am a visitor
    And a post exists with 10 likes
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see the likes count equals 10
    When I click the Like count
    Then I see the likes count equals 11
    When I click the Like count
    Then I see the likes count equals 10

  @javascript
  Scenario: Visitor's like cookies persist from show page
    Given I am a visitor
    And a post exists with 10 likes
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see the likes count equals 10
    When I click the Like count
    Then I see the likes count equals 11
    When I visit the homepage
    Then the post has still been liked by me

  @javascript
  Scenario: Visitor's like cookies persist from homepage
    Given I am a visitor
    And a post exists with 10 likes
    And I visit the homepage
    Then I see the likes count equals 10
    When I click the Like count
    Then I see the likes count equals 11
    When I click on the title of the post
    Then I see the show page for that post
    And the post has still been liked by me
