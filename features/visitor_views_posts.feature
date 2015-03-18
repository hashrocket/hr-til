Feature: Visitor views posts

  Scenario: Happy path
    Then there exist multiple TILs
    When I visit the homepage
    Then I see TILs sorted by date/time
