@API_Omdb


Feature: Search Movie by Category Type is movie

  Scenario: Search Movie by Category Type is movie-1
    Given Get the Omdb credentials from Configuration file
     When I call get request to search a movie Omdb API using by category  type is movie "movie" name is "Superman"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "259"
    Then I should validate response as "True"

# ---------------Negative Scenarios Movie-1 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" with an invalid name is "Supermanne"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body


  Scenario: Search Movie by Category Type is movie Negative Scenario-1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is "movie" with invalid double movie name "Supermanne" "Baby Boss"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body




#    ----------------------------<2>. Movie ------------------------------------------
  Scenario: Search Movie by Category Type is movie-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" name is "Avatar"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "76"
    Then I should validate response as "True"

# ---------------Negative Scenarios Movie-2 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" with an invalid name is "Avatarus"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by Category Type is movie Negative Scenario-2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is "movie" with invalid double movie name "Supermanne" "Avatar"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body



#    ----------------------------<3>. Movie ------------------------------------------
  Scenario: Search Movie by Category Type is movie-3
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" name is "mission impossible"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "54"
    Then I should validate response as "True"


# ---------------Negative Scenarios Movie-2 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-3_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" with an invalid name is "mission impossibleeeee"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by Category Type is movie Negative Scenario-3_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is "movie" with invalid double movie name "mission impossible" "Avatar"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body