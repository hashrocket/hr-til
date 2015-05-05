Feature: Admin views statistcs

  @javascript
  Scenario: Admin views statistics
    Given I am a signed in developer
    And I am an admin
    When I visit the statistics page
    Then I see statistics
