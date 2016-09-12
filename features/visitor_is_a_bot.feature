Feature: Visitor is a bot

  Scenario: And tries to visit Wordpress login
    Given I am a visitor
    And I try to visit "/wp-login.php"
    Then I am on the homepage
