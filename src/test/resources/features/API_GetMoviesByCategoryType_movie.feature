@API_Omdb


Feature: Search Movie by Category Type is movie

  Scenario: Search Movie by Category Type is movie-1
    Given Get the Omdb credentials from Configuration file
     When I call get request to search a movie Omdb API using by category  type is movie "movie" name is "Superman"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "259"
    Then I should validate response as "True"
  "
# ---------------Negative Scenarios ----------------------------
#
#  Scenario: Search Movie by Category Type is movie Negative Scenario-1
#    Given Get the Omdb credentials from Configuration file
##    When I call get request to search a movie Omdb API using by category  type is "movie" with an invalid name is "Supermanne"
#
#    Given Get the Omdb credentials from Configuration file
#    When I call get request to Omdb API using invalid title "The Boss Babyyy"
#
#    Then I should validate status code is "200"
#    Then I should validate content type is "application/json; charset=utf-8"
#
#    Then I should validate response "False" in response body
#    Then I should validate error "Movie not found!" in response body
