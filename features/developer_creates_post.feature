Feature: Developer creates post

  Scenario: Happy path
    Given I am a signed in developer
    When I click create TIL
    Then I see a form for TIL
    When I enter information into that form
    And I click create
    Then I see the homepage
    And I see the post I created

  Scenario: Sad path
    Given I am a signed in developer
    When I click create TIL
    Then I see a form for TIL
    When I click create
    Then I see an error message "TIL Creation failed"

