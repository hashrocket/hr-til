Feature: Developer visits profile page

  Scenario: Adds a twitter handle
    Given I am a signed in developer
    When I visit the homepage
    And I click profile
    Then I see my profile page
    When I enter my twitter handle
    Then I see the homepage
    And my twitter handle is set
