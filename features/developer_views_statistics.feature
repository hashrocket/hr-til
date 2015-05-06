Feature: Developer views statistcs

  @javascript
  Scenario: Developer views statistics
    Given I am a signed in developer
    When I visit the statistics page
    Then I see statistics

  @javascript
  Scenario: Visitors can't view statistics
    Given I am a visitor
    When I visit the statistics page
    Then I see the homepage
