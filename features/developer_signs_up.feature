Feature: Developer signs up

  Scenario: Happy path
    Given I see the homepage
    When I click signup
    Then I see the signup page
    When I enter a username
    And I enter my email
    And I enter a password
    And I click submit
    Then I see my username in the upper right
    And I do not see the signup link
