Feature: Visitor views post

  Scenario: Visitor clicks on post title
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post

  Scenario: Visitor clicks on post date
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the date of the post
    Then I see the show page for that post

  Scenario: Visitor clicks on 'next' and 'previous' arrows
    Given I am a visitor
    And three posts exist
    When I go to the most recent post
    Then I see only a left arrow
    When I click the left arrow
    Then I see the second most recent post
    And I see a right arrow and a left arrow
    When I click the left arrow
    Then I see the least recent post
    And I see only a right arrow
    When I click the right arrow
    Then I see the second most recent post

  Scenario: Visitor clicks on post title and sees a colored channel
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see a unique CSS selector for that channel

  Scenario: Visitor mangles url
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    And I visit a mangled version of the show url
    Then I see the show page for that post

  Scenario: Visitor views raw text of post via path
    Given I am a visitor
    And a post exists with a body "Raw text content"
    And I visit the post text page
    Then I see "Raw text content"
    And I should get a response with content-type "text/markdown; charset=utf-8"

  Scenario: Visitor views raw text of post via button
    Given I am a visitor
    And a post exists with a body "Raw text content"
    When I visit the post page
    And I click raw
    Then I see "Raw text content"
    And I should get a response with content-type "text/markdown; charset=utf-8"

  Scenario: Visitor mangles url on raw page
    Given I am a visitor
    And a post exists with a body "Raw text content"
    And I visit the post text page with a mangled url
    Then I see "Raw text content"
    And I should get a response with content-type "text/markdown; charset=utf-8"
