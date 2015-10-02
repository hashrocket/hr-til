Feature: Visitor views homepage

  Scenario: Visitor sees company information
    Given I am a visitor
    And I visit the homepage
    And I see the site name in the title
    Then I see the footer information

  Scenario: Visitor sees Atom feed
    Given I am a visitor
    And a post exists
    And I visit the homepage
    When I visit the Atom feed page
    Then I see an Atom feed

  @javascript
  Scenario: Visitor sees About Us
    Given I am a visitor
    And I visit the homepage
    Then I should see a "?" button
    And I should not see the About Us text
    When I click "?"
    Then I should see the About Us text
    When I click "?"
    And I should not see the About Us text
