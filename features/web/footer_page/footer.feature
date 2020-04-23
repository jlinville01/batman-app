@footer
Feature: tests relating to the footer links

  @footer_links @web
  Scenario Outline: Verify footer footer links
    When user selects the '<footer_link>' link from the footer
    Then user should be redirected from to '<url>'

    Scenarios:
      | footer_link | url                                        |
      | Github      | https://github.com/jlinville01             |
      | LinkedIn    | https://www.linkedin.com/justinlinville1/  |