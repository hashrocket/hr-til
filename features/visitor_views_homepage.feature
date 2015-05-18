Feature: Visitor views homepage

  Scenario: Visitor sees company information
    Given I am a visitor
    And I visit the homepage
    Then I see copyright and company information
    And I see the site name in the title

  Scenario: Visitor sees Atom feed
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I visit the Atom feed page
    Then I see an Atom feed
