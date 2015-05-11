# TODO Edit button not implemented in UI
@wip
Feature: Admin edits post

  Scenario: Admin edits post
    Given I am a signed in developer
    And I am an admin
    And a post exists by another developer
    When I visit the homepage
    When I click edit
    Then I see the edit page for that post
    When I enter new information into that form
    And I click submit
    Then I see the show page for that edited post
    # TODO Flash messages not implemented in UI
    #And I see a message "Post updated"
