Feature: Search for Movies
  [As a User] I want to search for movies using the OMDb API

Scenario Outline: Search Movie By Title
Given I am authenticated with "<apiKey>"
When I search movie by title "<movieTitle>"
Then the status code is 200

Examples:
| apiKey   | movieTitle |
| abc12345 | Avengers   |