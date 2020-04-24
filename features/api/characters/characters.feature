@characters
Feature: Character scenarios

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
    Given user sends an invalid request to create pre-existing character
    Then user should expect to get

  @invalid_create_character_empty @api
  Scenario: User cannot create character that already exists
    Given user sends an invalid request to create empty character
    Then user should expect to get errors for empty payload

  @invalid_create_character_no_alter_ego @api
  Scenario: User cannot create character with empty payload
    Given user sends an invalid request to create character without 'alter_ego'
    Then user should expect can't be blank error for empty 'alter_ego'

  @invalid_create_character_no_real_name @api
  Scenario: User cannot create character without real name
    Given user sends an invalid request to create character without 'real_name'
    Then user should expect can't be blank error for empty 'real_name'

  @invalid_create_character_no_debut @api
  Scenario: User cannot create character without debut
    Given user sends an invalid request to create character without 'debut'
    Then user should expect can't be blank error for empty 'debut'

  @invalid_create_character_no_status @api
  Scenario: User cannot create character without status
    Given user sends an invalid request to create character without 'status'
    Then user should expect can't be blank error for empty 'status'

  @invalid_create_character_no_bio @api
  Scenario: User cannot create character without bio
    Given user sends an invalid request to create character without 'bio'
    Then user should expect can't be blank error for empty 'bio'
    