Feature: Developer signs up or signs in

  Scenario: Developer signs up
    Given I am not already a developer
    And I try to sign up or sign in with valid credentials
    Then I am signed in
    When I click on my username in the upper right

  Scenario: Developer signs in
    Given I am already a developer
    And I try to sign up or sign in with valid credentials
    Then I am signed in
