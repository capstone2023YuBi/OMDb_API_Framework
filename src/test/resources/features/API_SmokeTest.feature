@odbc

Feature: -API- Omdb Smoke Test


  Scenario: Search Movie by title1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Boss Baby"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "The Boss Baby"
    Then I should validate year  is "2017"

    Then I should validate rated "PG"
    Then I should validate released is "31 Mar 2017"
    Then I should validate runtime is "97 min"
    Then I should validate genre is "Animation, Adventure, Comedy"

  Scenario: Search Movie by title1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Boss Baby"
    Then I should validate director is "Tom McGrath"
    Then I should validate writer is "Michael McCullers, Marla Frazee"
    Then I should validate actors is "Alec Baldwin, Steve Buscemi, Jimmy Kimmel"

  Scenario: Search Movie by title1_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Boss Baby"
    Then I should validate plot is "A suit-wearing, briefcase-carrying baby pairs up with his 7-year old brother to stop the dastardly plot of the CEO of Puppy Co."
    Then I should validate language is "English, Spanish"
    Then I should validate country is "United States"
    Then I should validate awards is "Nominated for 1 Oscar. 4 wins & 21 nominations total"

    Then I should validate metaScore is "50"
#    Then I should validate imdbRating is "6.3"
#    Then I should validate imdbVotes is "132,509"

    Then I should validate title is "The Boss Baby"
    Then I should validate type is "movie"

# ---------------Negative Scenarios ----------------------------

  Scenario: Search Movie by title Negative Scenario-1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using invalid title "The Boss Babyyy"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by title Negative Scenario-1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using double title "The Boss Baby-2" "The Boss Baby-3"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body


    ##########################################################################################
#    ---------------------<1>. Episode Example------------------------------------------------

  Scenario: Search Movie by title & season & episode-1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "prison break" and season "1" and episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"


    Then I should validate title is "Pilot"
    Then I should validate year  is "2005"
    Then I should validate rated "TV-14"
    Then I should validate released is "29 Aug 2005"
    Then I should validate season is "1"
    Then I should validate episode is "1"
    Then I should validate runtime is "42 min"
    Then I should validate genre is "Action, Crime, Drama"

  Scenario: Search Movie by Category Type is episode1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "prison break" and season "1" and episode "1"
    Then I should validate director is "Brett Ratner"
    Then I should validate writer is "Paul T. Scheuring"
    Then I should validate actors is "Dominic Purcell, Wentworth Miller, Robin Tunney"

  Scenario: Search Movie by Category Type is episode1_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "prison break" and season "1" and episode "1"

    Then I should validate plot is "Michael Scofield is imprisoned in Fox River State Penitentiary. He finds his brother, Lincoln Burrows, who is a death row prisoner, and tells him that he is going to break them both out of the prison."
    Then I should validate language is "English, Portuguese"
    Then I should validate country is "United States"
    Then I should validate awards is "N/A"

    Then I should validate metaScore is "N/A"
#    Then I should validate imdbRating is "8.7"
#    Then I should validate imdbVotes is "7298"
    Then I should validate imdbID is "tt0678483"
    Then I should validate seriesID is "tt0455275"

    Then I should validate type is "episode"
    Then I should validate response as "True"

# ---------------Negative Scenarios <1>----------------------------

  Scenario: Search Movie by title Negative Scenario-1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "prison break" and invalid season "1" or invalid episode "100"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

  Scenario: Search Movie by title Negative Scenario-1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "prison break" and invalid season "100" or invalid episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

    Then I should validate error "Series or episode not found!" in response body


    #####################################################################

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


        #####################################################################

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


        #####################################################################


  Scenario: Search Movie by ImdbID1_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt3874544"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "The Boss Baby"
    Then I should validate year  is "2017"

    Then I should validate rated "PG"
    Then I should validate released is "31 Mar 2017"
    Then I should validate runtime is "97 min"
    Then I should validate genre is "Animation, Adventure, Comedy"

  Scenario: Search Movie by ImdbID1_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt3874544"
    Then I should validate director is "Tom McGrath"
    Then I should validate writer is "Michael McCullers, Marla Frazee"
    Then I should validate actors is "Alec Baldwin, Steve Buscemi, Jimmy Kimmel"

  Scenario: Search Movie by ImdbID1_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt3874544"
    Then I should validate plot is "A suit-wearing, briefcase-carrying baby pairs up with his 7-year old brother to stop the dastardly plot of the CEO of Puppy Co."
    Then I should validate language is "English, Spanish"
    Then I should validate country is "United States"
    Then I should validate awards is "Nominated for 1 Oscar. 4 wins & 21 nominations total"

    Then I should validate metaScore is "50"
#    Then I should validate imdbRating is "6.3"
#    Then I should validate imdbVotes is "132,509"

    Then I should validate imdbID is "tt3874544"
    Then I should validate type is "movie"

# ---------------Negative Scenarios ----------------------------

  Scenario: Search Movie by ImdbID Negative Scenario-1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using invalid ImdbID "tt387454423"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Incorrect IMDb ID." in response body

  Scenario: Search Movie by ImdbID Negative Scenario-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using double ImdbID "tt3874544" "tt2106476"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Incorrect IMDb ID." in response body

