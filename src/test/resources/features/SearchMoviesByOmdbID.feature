Feature: Search for Movies
  [As a User] I want to search for movies using the OMDb API

  Scenario Outline: Search Movie By Id
    Given I am authenticated with "<apiKey>"
    When I search movie by id "<movieId>"
    Then the status code is 200

    Examples:
      | apiKey   | movieId   |
      | abc12345 | tt0848228 |

