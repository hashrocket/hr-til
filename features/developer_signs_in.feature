Feature: Developer signs in

  Scenario: Happy path
    Given I see the homepage
    And I am a developer with credentials
    When I click sign in
    Then I see the signin page
    When I enter my credentials
    And I click the sign in button
    Then I see my username in the upper right
    And I do not see the signup link
    And I do not see the signin link

  Scenario: Sad path
    Given I see the homepage
    And I am a developer with credentials
    When I click sign in
    Then I see the signin page
    When I enter my credentials incorrectly
    And I click the sign in button
    Then I see an error message "Signin failed"
    And I see the signup link
    And I see the signin link
