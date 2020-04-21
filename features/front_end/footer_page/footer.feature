@footer
Feature: Scenarios relating to the footer links

  Background:
    Given user navigates to homepage
    And user expects to see the '<homepage_link>' link displayed

  @footer_links @web
  Scenario Outline: Verify homepage footer links
    When user selects the '<homepage_link>' link from the footer
    Then user should be redirected to '<url>'

    Scenarios:
    | homepage_link    | url             |
    | Github           | /characters     |
    | LinkedIn         | /episodes       |