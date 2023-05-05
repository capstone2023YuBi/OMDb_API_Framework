@Smoke
@odbc

Feature: Omdb UI Testing

  Background: User is on the OMDB homepage

  Scenario: Openning OMDB
    Given  User is on the OMDB home page
  Scenario:
    Then Validating

  Scenario: Clicking Usage button
    When Click the Usage button
    Then User should see the Usage page.

  Scenario: Clicking Parameters button
    When Click the parameters button
    Then User should see the parameters page.

  Scenario: Clicking Examples button
    When Click the Examples button
    Then User should see the examples page.

  Scenario: Searching Movie
    When typing "Back to the future" in the search box
    Then User see the movie information

  Scenario Outline: Search
    When typing "<movies>" in the search box
    When selecting the full button in the dropdown
    Then User see the movie information
    Examples: Test Data

      |movies            |
      |back to the future|
      |Casablanca        |
      |Batman            |
      |The Boss Baby     |
      |Deep Impact       |
      |Rocky IV          |

#  Scenario: Movie information short/full
#    When selecting the full button in the dropdown
#    Then User see full information about the movie

  Scenario: Clicking ChangeLog button
    When Click the ChangeLog button
    Then User should see the ChangeLog page.

  Scenario: Clicking ApiKey button
    When Click the ApiKey button
    And typing "something@gmail.com" in the mail box
    Then User should see the ApiKey page.

