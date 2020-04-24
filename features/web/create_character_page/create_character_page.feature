@create_characters_page
Feature: Scenarios relating to the header nav

  Background:
    Given user selects the 'Create Character' link from the header
    Then user should see the 'Create Character' page title displayed

  @create_character_web @web
  Scenario: User creates a valid new character
    When user submits a valid new character
    Then user should see the 'Characters' page title displayed

  @invalid_create_character_exists_web @web
  Scenario: User creates a valid new character
    When user submits a character that already exists
    Then user should see error message that character already exists

  @invalid_create_character_empty_web @web
  Scenario: User creates a valid new character
    When user submits an empty new character
    Then user should see error messages for empty character

