@episodes_page
Feature: tests relating to the Episodes page

  @episodes_links @web
  Scenario: Verify episodes page links
    Given user selects the 'Episodes' link from the header
    And user should be redirected to '/episodes'
    And user should see the 'Episodes' page title displayed
    When user selects the 'Fear of Victory' episode link
    Then user should see 'Fear of Victory' episode title