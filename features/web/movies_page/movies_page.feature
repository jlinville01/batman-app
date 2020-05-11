@movies_page
Feature: tests relating to the Movies page

  @movies_links @web
  Scenario: Verify movies page links
    Given user selects the 'Movies' link from the header
    And user should be redirected to '/movies'
    And user should see the 'Movies' page title displayed
    When user selects the 'Batman: Mask of the Phantasm' movie link
    And user should see 'Batman: Mask of the Phantasm' movie title