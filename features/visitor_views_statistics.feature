@javascript
Feature: Visitor views statistics

  Scenario: Visitors views statistics
    Given I am a visitor
    And a post exists for each of the last 35 days
    When I visit the statistics page
    Then I see statistics

  Scenario: Visitors views statistics via button
    Given I am a visitor
    When I visit the homepage
    And a post exists for each of the last 35 days
    And I click "statistics"
    Then I see statistics

  Scenario: Visitors views statistics when there are no recent posts
    Given I am a visitor
    When I visit the homepage
    And 35 posts exist more than thirty days old
    And I click "statistics"
    Then I see statistics

  Scenario: Visitors views post total counts
    Given I am a visitor
    And 35 posts exist in 5 channels
    When I visit the statistics page
    Then I see "35 posts in 5 channels"

  Scenario: Visitors views post total counts
    Given I am a visitor
    And there are 6 authors who have authored posts
    And there are 2 authors who have not authored posts
    When I visit the statistics page
    Then I see "6 authors"
