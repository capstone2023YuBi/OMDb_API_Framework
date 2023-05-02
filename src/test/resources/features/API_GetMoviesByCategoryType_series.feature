@API_Omdb


Feature: Search Movie by Category Type is series

  Scenario: Search Movie by Category Type is series-1
    Given Get the Omdb credentials from Configuration file
     When I call get request to search a movie Omdb API using by category  type is series "series" name is "Batman"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "51"
    Then I should validate response as "True"

# ---------------Negative Scenarios Movie-1 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with an invalid name is "Batmanne"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


  Scenario: Search Movie by Category Type is movie Negative Scenario-1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with invalid double movie name "Supermanne" "Baby Boss"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


#    --------------<2>. Movie--------------------------

  Scenario: Search Movie by Category Type is series-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" name is "popeye"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "6"
    Then I should validate response as "True"

# ---------------Negative Scenarios Movie-2 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with an invalid name is "popeyeeee"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


  Scenario: Search Movie by Category Type is movie Negative Scenario-2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with invalid double movie name "popeyeeee" "Baby Boss"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


 #    --------------<3>. Movie--------------------------

  Scenario: Search Movie by Category Type is series-3
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" name is "avatar"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate totalResult as "16"
    Then I should validate response as "True"

# ---------------Negative Scenarios Movie-3 ----------------------------

  Scenario: Search Movie by Category Type is movie Negative Scenario-3_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with an invalid name is "avatarus"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


  Scenario: Search Movie by Category Type is movie Negative Scenario-3_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is series "series" with invalid double movie name "avatar" "popeye"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series not found!" in response body


