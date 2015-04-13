Feature: Visitor views homepage

  Scenario: Visitor sees company information
    Given I am a visitor
    And I visit the homepage
    Then I see copyright and company information
