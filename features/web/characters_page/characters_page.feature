@characters_page
Feature: tests relating to the Characters page

  @characters_links @web
  Scenario: Verify header links
    Given user selects the 'Characters' link from the header
    And user should be redirected to '/characters'
    And user should see the 'Characters' page title displayed
    When user selects the 'Batman' character link
    And user should see 'Batman' alter ego