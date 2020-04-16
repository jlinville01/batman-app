@characters
Feature: User should be able to test Actor functionality

  @all_characters
  Scenario: User requests all characters
    Given user sends valid GET request for all characters
    Then all characters should return in the response

  @specific_character
  Scenario: User requests specific character
    Given user sends valid GET request for character ID 1
    Then character 'Batman' should return in the response

  @create_character
  Scenario: User creates new character
    Given user sends a valid request to create character
    Then a new character should be created