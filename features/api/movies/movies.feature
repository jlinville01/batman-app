@movies
Feature: User should be able to test Movie functionality

  @all_movies @api
  Scenario: User requests all movies
    Given user sends valid GET request for all movies
    Then all movies should return in the response

  @specific_movie @api
  Scenario: User requests specific movie
    Given user sends valid GET request for movie ID 1
    Then movie 'Batman: Mask of the Phantasm' should return in the response