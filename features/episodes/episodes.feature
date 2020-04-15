@episodes
Feature: User should be able to test Episode functionality

  @all_episodes
  Scenario: User should be able to get all episodes
    Given user sends valid GET request for all episodes
    Then all episodes should return in the response

  @specific_episode
  Scenario: User should be able to get specific episode
    Given I send a valid request for a specific episode ''
    Then episode '' should return in the response