@movies
Feature: User should be able to test Movie functionality

  @all_movies
  Scenario: User should be able to get all movies
    Given user sends valid GET request for all movies
    Then all movies should return in the response

  @specific_movie
  Scenario: User should be able to get specific movie
    Given I send a valid request for a specific movie ''
    Then movie '' should return in the response