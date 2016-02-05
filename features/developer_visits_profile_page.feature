Feature: Developer visits profile page

  Scenario: Adds a twitter handle
    Given I am a signed in developer with email "foo@hashrocket.com"
    When I visit the homepage
    And I click profile
    Then I see my profile page
    And I see my email "foo@hashrocket.com"
    When I enter my twitter handle
    And I click the "Submit" button
    Then I see the homepage
    And my twitter handle is set

  Scenario: Adds an invalid twitter handle
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I enter an invalid twitter handle
    And I click the "Submit" button
    Then I see an error message "Twitter handle is invalid"

  Scenario: Can submit form without entering a Twitter handle
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    And I click the "Submit" button
    Then I see the homepage

  @javascript
  Scenario: Sets editor to Ace editor
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I change my editor to "Ace"
    And I click the "Submit" button
    Then I see the homepage
    When I visit the new post page
    Then I see a form for posts
    And the editor is set to "Ace"

  @javascript
  Scenario: Sets editor to Ace editor with VIM
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I change my editor to "Ace (w/ Vim)"
    And I click the "Submit" button
    Then I see the homepage
    When I visit the new post page
    Then I see a form for posts
    And the editor is set to "Ace (w/ Vim)"

  @javascript
  Scenario: Sets editor to a Text Field
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I change my editor to "Text Field"
    And I click the "Submit" button
    Then I see the homepage
    When I visit the new post page
    Then I see a form for posts
    And the editor is set to "Text Field"

  Scenario: Adds a Slack name
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I enter a Slack name
    And I click the "Submit" button
    Then I see "Developer updated"
    And I click profile
    Then I see my Slack name
