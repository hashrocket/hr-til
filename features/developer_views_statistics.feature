Feature: Developer views statistcs

  @javascript
  Scenario: Developer views statistics via path
    Given I am a signed in developer
    When I visit the statistics page
    Then I see statistics

  @javascript
  Scenario: Developer views statistics via button
    Given I am a signed in developer
    When I click statistics
    Then I see statistics

  @javascript
  Scenario: Visitors can't view statistics
    Given I am a visitor
    When I visit the statistics page
    Then I see the homepage
