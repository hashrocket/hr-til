Feature: Visitor views posts

  Scenario: Happy path
    Given I am a visitor
    And there exist TILs for today, yesterday, and last week
    When I visit the homepage
    Then I see TILs sorted and grouped by date/time

  Scenario: Sad path (no posts)
    Given I am a visitor
    And no posts exist
    When I visit the homepage
    Then I see a message "No posts."
