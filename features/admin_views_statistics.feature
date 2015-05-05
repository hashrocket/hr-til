Feature: Admin views statistcs

  @javascript
  Scenario: Admin views statistics
    Given I am a signed in developer
    And I am an admin
    When I visit the statistics page
    Then I see statistics

  Scenario: Visitors can't view statistics
    Given I am a visitor
    When I visit the statistics page
    Then I see the homepage

  Scenario: Developers can't view statistics
    Given I am a signed in developer
    When I visit the statistics page
    Then I see the homepage
