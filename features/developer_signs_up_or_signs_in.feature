Feature: Developer signs up or signs in

  Scenario: Developer signs up
    Given I am not already a developer
    And I try to sign up or sign in with valid credentials
    Then I am signed in

  Scenario: Developer signs in
    Given I am already a developer
    And I try to sign up or sign in with valid credentials
    Then I am signed in

  Scenario: Guest signs in
    Given I try to sign up with a white-listed guest email address
    Then I am signed in
    And a guest user is created
