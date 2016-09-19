Feature: Visitor is a bot

  Scenario: And tries to visit Wordpress login via channels
    Given I am a visitor
    And I try to visit "/wp-login.php"
    Then I am on the homepage

  Scenario: And tries to visit Wordpress login via developers
    Given I am a visitor
    And I try to visit "authors/wp-login.php"
    Then I am on the homepage
