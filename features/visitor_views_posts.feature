Feature: Visitor views posts

  Scenario: Posts exist
    Given I am a visitor
    And there exist TILs for today, yesterday, and last week
    When I visit the homepage
    Then I see TILs sorted and grouped by date/time

  Scenario: Posts do not exist
    Given I am a visitor
    And no posts exist
    When I visit the homepage
    Then I see a message "No posts."

  Scenario: Visitor views posts by author
    Given I am a visitor
    And posts exist for a given author
    When I visit the url 'http://domain/author/username'
    Then I see all the posts for that author grouped by date/time

  Scenario: Visitor views posts by author via link
    Given I am a visitor
    And posts exist for a given author
    When I visit the homepage
    And I click that author's username
    Then I see all the posts for that author grouped by date/time
