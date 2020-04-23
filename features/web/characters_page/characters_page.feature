@characters_page
Feature: Scenarios relating to the header nav

  Background:
    Given user navigates to homepage
    And user selects the '<homepage_link>' link from the header
    Then user is expected to land on the Characters page

  @create_character @web
  Scenario: User creates a valid new character
