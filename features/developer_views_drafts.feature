Feature: Developer views drafts

  Scenario: Admin views drafts
    Given I am a signed in developer
    And I am an admin
    And 2 drafts exist by another developer
    When I click "Drafts"
    Then I see 2 posts

  Scenario: Non-admin views drafts
    Given I am a signed in developer
    And I have a draft post
    And 5 drafts exist by another developer
    When I click "Drafts"
    Then I see 1 post
