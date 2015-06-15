Feature: Visitor views posts

  Scenario: Posts exist
    Given I am a visitor
    And there exist posts for today, yesterday, and last week
    When I visit the homepage
    Then I see the sorted posts

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

  Scenario: Visitor sees pagination
    Given I am a visitor
    And 150 posts exist
    When I visit the homepage
    Then I should see 50 posts
    And I should see a "older TILs" button
    And I should not see a "newer TILs" button
    When I click "older TILs"
    Then I should see 50 posts
    And I should see a "older TILs" button
    And I should see a "newer TILs" button
    When I click "older TILs"
    Then I should see 50 posts
    And I should see a "newer TILs" button
    And I should not see a "older TILs" button

  Scenario: Visitor sees no pagination when less than 50 post
    Given I am a visitor
    And 40 posts exist
    When I visit the homepage
    Then I should see 40 posts
    And I should not see a "newer TILs" button
    And I should not see a "older TILs" button
