@characters
Feature: User should be able to test Actor functionality

  @all_characters
  Scenario: User should be able to get all characters
    Given user sends valid GET request for all characters
    Then all characters should return in the response

  @specific_actor
  Scenario: User should be able to get specific character
    Given I send a valid request for a specific character ''
    Then character '' should return in the response
