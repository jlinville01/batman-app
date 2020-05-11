@characters_page
Feature: tests relating to the Characters page

  @characters_links @web
  Scenario: Verify characters page links
    Given user selects the 'Characters' link from the header
    And user should be redirected to '/characters'
    And user should see the 'Characters' page title displayed
    When user selects the 'Batman' character link
    Then user should see 'Batman' alter ego