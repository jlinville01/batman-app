@actors
Feature: Actor scenarios

  @all_actors @api
  Scenario: User requests all actors
    Given user sends valid GET request for all actors
    Then all actors should return in the response

  @specific_actor @api
  Scenario: User requests specific actor
    Given user sends valid GET request for actor ID 1
    Then actor 'Kevin Conroy' should return in the response

