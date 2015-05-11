Feature: Visitor views page for a tag

  Scenario: Posts exist
    Given I am a visitor
    And a tag exists
    And there are TILs with that tag
    When I visit '/that tag'
    Then I see all posts tagged with that tag

  # TODO Tags not implemented for posts
  @wip
  Scenario: Visitor clicks tag from post
    Given I am a visitor
    And a tag exists
    And there are TILs with that tag
    And I visit the homepage
    When I click the tag
    Then I see all posts tagged with that tag
