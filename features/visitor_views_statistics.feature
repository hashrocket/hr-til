Feature: Visitor views statistics

  Scenario: Visitors views statistics
    Given I am a visitor
    When I visit the statistics page
    Then I see statistics

  Scenario: Visitors views statistics via button
    Given I am a visitor
    When I visit the homepage
    And I click "Stats"
    Then I see statistics
