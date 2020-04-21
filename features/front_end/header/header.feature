@header
Feature: Scenarios relating to the header nav

  Background:
    Given user navigates to homepage
    Then user is expected to land on the homepage

  @header_links @web
  Scenario Outline: Verify homepage header links
    And user is expected to see the '<homepage_link>' section fully displayed
    When user selects the '<homepage_link>' link from the header
    Then user should be redirected to '<url>' on the same tab
    And user should see the '<title_name>' page title displayed

    Scenarios:
      | homepage_link    | url             | title_name           |
      | Characters       | /characters     | Characters           |
      | Episodes         | /episodes       | Episodes             |
      | Movies           | /movies         | Movies               |
      | Actors           | /actors         | Actors               |
      | Create Character | /characters/new | Create New Character |

  @search_bar @web
  Scenario: Verify searchbar
    When user searches for 'Batman'
    Then user should be redirected
    And user should see the 'Batman' page title displayed

  @invalid_search_bar @web
  Scenario: Verify searchbar
    When user searches for 'gibberish'
    Then user should be