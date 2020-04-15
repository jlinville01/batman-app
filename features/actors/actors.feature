@actors
Feature: User should be able to test Actor functionality

  @all_actors
  Scenario: User should be able to get all actors
    Given user sends valid GET request for all actors
    Then all actors should return in the response

  @specific_actor
  Scenario: User should be able to get specific actor
    Given I send a valid request for a specific actor 'Kevin Conroy'
    Then actor 'Kevin Conroy' should return in the response

