@actors
Feature: User should be able to test Actor functionality

  @all_actors
  Scenario: User requests all actors
    Given user sends valid GET request for all actors
    Then all actors should return in the response

  @specific_actor
  Scenario: User requests specific actor
    Given user sends valid GET request for actor ID 1
    Then actor 'Kevin Conroy' should return in the response

