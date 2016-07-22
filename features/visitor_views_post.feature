Feature: Visitor views post

  Scenario: Visitor clicks on post title
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post

  Scenario: Visitor sees sanitized HTML
    Given I am a visitor
    And a post exists with a punctuated title
    When I visit the show page for that post
    Then I see the sanitized title

  Scenario: Visitor sees more info text
    Given I am a visitor
    And a channel with a more info partial
    And a post exists in the ruby channel
    When I visit the show page for that post
    Then I see the more info partial on the show page

  Scenario: Visitor does not see more info text on draft posts
    Given I am a visitor
    And a channel with a more info partial
    And a draft post exists in the ruby channel
    When I visit the show page for that post
    Then I do not see the more info partial on the show page

  Scenario: Visitor clicks on post date
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the date of the post
    Then I see the show page for that post

  Scenario: Visitor views a twitter share Post button
    Given I am a visitor
    And a post exists
    When I visit the show page for that post
    Then I see the twitter share button

  Scenario: Visitor clicks on 'next' and 'previous' arrows
    Given I am a visitor
    And three posts exist
    When I go to the most recent post
    Then I see only a previous TIL link
    When I click the previous TIL link
    Then I see the second most recent post
    And I see a next TIL link and a previous TIL link
    When I click the previous TIL link
    Then I see the least recent post
    And I see only a next TIL link
    When I click the next TIL link
    Then I see the second most recent post

  Scenario: Visitor clicks on 'previous' arrow with a draft post
    Given I am a visitor
    And three posts exist, one a draft
    When I go to the most recent post
    Then I see only a previous TIL link
    When I click the previous TIL link
    Then I see the least recent post
    And I see only a next TIL link

  Scenario: Visitor clicks on 'previous' arrow with a draft post
    Given I am a visitor
    And three posts exist, with publication dates in a different order than creation dates
    When I go to the most recent post
    Then I see only a previous TIL link
    When I click the previous TIL link
    Then I see the second most recent post
    And I see a next TIL link and a previous TIL link
    When I click the previous TIL link
    Then I see the least recent post
    And I see only a next TIL link
    When I click the next TIL link
    Then I see the second most recent post

  Scenario: Visitor mangles url
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I click on the title of the post
    And I visit a mangled version of the show url
    Then I see the show page for that post

  Scenario: Visitor views raw text of post via path
    Given I am a visitor
    And a post exists with a body "Raw text content with code `{:empty => nil}`"
    And I visit the post text page
    Then I see "Raw text content with code `{:empty => nil}`"
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

  Scenario: Visitor sees sanitized scripts in HTML
    Given I am a visitor
    And a post exists with a body "<script>alert('XSS')</script>"
    When I visit the show page for that post
    Then I see the sanitized script

  Scenario: Visitor sees sanitized links in HTML
    Given I am a visitor
    And a post exists with a body "<a href='#' onclick='javascript:alert("XSS")'>Click here</a>"
    When I visit the show page for that post
    Then I see the sanitized link

  @javascript
  Scenario: Visitor sees likes
    Given I am a visitor
    And a post exists with 10 likes
    And I visit the homepage
    When I click on the title of the post
    Then I see the show page for that post
    And I see the likes count equals 10
