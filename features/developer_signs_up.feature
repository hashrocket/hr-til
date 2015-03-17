Feature: Developer signs up

  Scenario: Happy path
    Given I see the homepage
    When I click signup
    Then I see the signup page
    When I enter a valid username
    And I enter a valid email
    And I enter a valid password
    And I click submit
    Then I see my username in the upper right
    And I do not see the signup link

  Scenario: Sad path
    Given I see the homepage
    When I click signup
    Then I see the signup page
    And I click submit
    Then I see validation errors
    And I see the signup link
