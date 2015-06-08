Feature: Visitor searches posts

  Scenario: Via address bar
    Given a post exists with the body "Needles are the thing we want"
    And a post exists with the body "But what about all this hay?"
    And I visit the homepage
    When I search for "needle" in the address bar
    Then I am on the homepage
    And I see the "Needles" post
    And I do not see the "Hay" post
    And I see a header "1 post about needle"

  @javascript
  Scenario: Via search form
    Given a post exists with the body "Needles are the thing we want"
    And a post exists with the body "But what about all this hay?"
    And I visit the homepage
    When I search for "needle" in the search bar
    Then I am on the homepage
    And I see the "Needles" post
    And I do not see the "Hay" post
    And I see a header "1 post about needle"

  @javascript
  Scenario: Via search form with no query
    Given a post exists with the body "Needles are the thing we want"
    And a post exists with the body "But what about all this hay?"
    And I visit the homepage
    When I search for "" in the search bar
    Then I am on the homepage
    And I see the "Needles" post
    And I see the "Hay" post
    And I don't see a search header

  @javascript
  Scenario: Via search form from any page
    Given a post exists with the body "Needles are the thing we want"
    And a post exists with the body "But what about all this hay?"
    When I visit the most recent post show page
    And I search for "needle" in the search bar
    Then I am on the homepage
    And I see the "Needles" post
    And I do not see the "Hay" post
    And I see a header "1 post about needle"
