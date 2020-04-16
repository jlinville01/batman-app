@episodes
Feature: User should be able to test Episode functionality

  @all_episodes
  Scenario: User requests all episodes
    Given user sends valid GET request for all episodes
    Then all episodes should return in the response

  @specific_episode
  Scenario: User requests specific episode
    Given user sends valid GET request for episode ID 60
    Then episode "The Demon's Quest: Part 1" should return in the response