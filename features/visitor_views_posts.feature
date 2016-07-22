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

  Scenario: Visitor sees no pagination when less than 51 posts
    Given I am a visitor
    And 50 posts exist
    When I visit the homepage
    Then I should see 50 posts
    And I should not see a "newer TILs" button
    And I should not see a "older TILs" button

  @javascript
  Scenario: Author's posts are paginated
    Given I am a visitor
    And 51 posts exist by a given author
    When I visit the author's page
    Then I should see 50 posts
    When I click "older TILs"
    Then I should see 1 post
    When I click "newer TILs"
    Then I should see 50 posts
