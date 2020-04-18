@characters
Feature: User should be able to test Actor functionality

  @all_characters @api
  Scenario: User requests all characters
    Given user sends valid GET request for all characters
    Then all characters should return in the response

  @specific_character @api
  Scenario: User requests specific character
    Given user sends valid GET request for character ID 1
    Then character 'Batman' should return in the response

  @create_character @api
  Scenario: User creates new character
    Given user sends a valid request to create character
    Then a new character should be created

  @invalid_create_character_preexisting @api
  Scenario: User cannot create character that already exists

  @invalid_create_character_no_alias @api
  Scenario: User cannot create character without alias

  @invalid_create_character_no_real_name @api
  Scenario: User cannot create character without real name

  @invalid_create_character_no_debut @api
  Scenario: User cannot create character without debut

  @invalid_create_character_no_status @api
  Scenario: User cannot create character without status

  @invalid_create_character_no_bio @api
  Scenario: User cannot create character without bio
    