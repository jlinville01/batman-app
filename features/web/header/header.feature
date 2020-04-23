@header
Feature: tests relating to the header nav

  @header_links @web
  Scenario Outline: Verify header links
    When user selects the '<header_link>' link from the header
    Then user should be redirected to '<url>' on the same tab
    And user should see the '<title_name>' page title displayed

    Scenarios:
      | header_link      | url             | title_name           |
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