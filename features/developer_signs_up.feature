Feature: Developer signs up

  Scenario: Happy path
    Given I see the homepage
    When I click signup
    Then I see the signup page
    When I enter a valid username
    And I enter a valid email
    And I enter a valid password
    And I click create account
    Then I see my username in the upper right
    And I do not see the signup link
    And I do not see the signin link

  Scenario: Sad path
    Given I see the homepage
    When I click signup
    Then I see the signup page
    And I click create account
    Then I see an error message "Password can't be blank"
    And I see an error message "Email can't be blank"
    And I see an error message "Username can't be blank"
    And I see an error message "Username is invalid"
    And I see the signup link
    And I see the signin link
