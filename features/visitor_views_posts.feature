Feature: Visitor views posts

  Scenario: Posts exist
    Given I am a visitor
    And there exist posts for today, yesterday, and last week
    When I visit the homepage
    Then I see the sorted posts

  Scenario: Visitor views posts by author
    Given I am a visitor
    And posts exist for a given author
    When I visit the url 'http://domain/authors/username'
    Then I see all the posts for that author grouped by date/time

  Scenario: Visitor views published posts by author
    Given I am a visitor
    And two posts exist for a given author, one a draft
    When I visit that author's posts page
    Then I see only 1 published post

  Scenario: Visitor does not view a twitter share Post button
    Given I am a visitor
    And a post exists
    When I visit the homepage
    Then I do not see the twitter share button

  Scenario: Visitor views posts by author via link
    Given I am a visitor
    And posts exist for a given author
    When I visit the homepage
    And I click that author's username
    Then I see all the posts for that author grouped by date/time

  Scenario: Visitor views author page with a Twitter handle set
    Given I am a visitor
    When I visit the author page of an author with a Twitter handle
    Then I see the author's Twitter link

  @javascript
  Scenario: Visitor sees paginated posts
    Given I am a visitor
    And 3 pages' worth of paginated posts exist
    When I visit the homepage
    Then I see posts matching the pagination breakpoint
    And I should see a "older TILs" button
    And I should not see a "newer TILs" button
    When I click "older TILs"
    Then I see posts matching the pagination breakpoint
    And I should see a "older TILs" button
    And I should see a "newer TILs" button
    When I click "older TILs"
    Then I see posts matching the pagination breakpoint
    And I should see a "newer TILs" button
    And I should not see a "older TILs" button

  @javascript
  Scenario: Visitor sees paginated posts for an author
    Given I am a visitor
    And author "Corl" has 10 more posts than the pagination breakpoint
    When I visit the author page for "Corl"
    Then I see posts matching the pagination breakpoint
    And I should see a "older TILs" button

  @javascript
  Scenario: Visitor sees paginated posts for a channel
    Given I am a visitor
    And channel "Haskell" has 10 more posts than the pagination breakpoint
    When I visit the channel page for "Haskell"
    Then I see posts matching the pagination breakpoint
    And I should see a "older TILs" button

  Scenario: Visitor sees no pagination when less than breakpoint posts
    Given I am a visitor
    And 1 pages' worth of paginated posts exist
    When I visit the homepage
    Then I see posts matching the pagination breakpoint
    And I should not see a "newer TILs" button
    And I should not see a "older TILs" button
