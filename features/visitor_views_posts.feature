Feature: Visitor views posts

  Scenario: Happy path
    Given I am a visitor
    And there exist multiple TILs
    When I visit the homepage
    Then I see TILs sorted by date/time
