@odbc
#@API_Omdb


Feature: -API- Search Movie by Category Type is episode


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


#    ---------------------<2>. Episode Example------------------------------------------------
  Scenario: Search Movie by title & season & episode-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "game of thrones" and season "1" and episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"


    Then I should validate title is "Winter Is Coming"
    Then I should validate year  is "2011"
    Then I should validate rated "TV-MA"
    Then I should validate released is "17 Apr 2011"
    Then I should validate season is "1"
    Then I should validate episode is "1"
    Then I should validate runtime is "62 min"
    Then I should validate genre is "Action, Adventure, Drama"

  Scenario: Search Movie by Category Type is episode2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "game of thrones" and season "1" and episode "1"
    Then I should validate director is "Timothy Van Patten"
    Then I should validate writer is "David Benioff, D.B. Weiss, George R.R. Martin"
    Then I should validate actors is "Sean Bean, Mark Addy, Nikolaj Coster-Waldau"

  Scenario: Search Movie by Category Type is episode2_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "game of thrones" and season "1" and episode "1"

    Then I should validate plot is "Eddard Stark is torn between his family and an old friend when asked to serve at the side of King Robert Baratheon; Viserys plans to wed his sister to a nomadic warlord in exchange for an army."
    Then I should validate language is "English"
    Then I should validate country is "United States"
    Then I should validate awards is "N/A"

    Then I should validate metaScore is "N/A"
#    Then I should validate imdbRating is "8.9"
#    Then I should validate imdbVotes is "50985"
    Then I should validate imdbID is "tt1480055"
    Then I should validate seriesID is "tt0944947"

    Then I should validate type is "episode"
    Then I should validate response as "True"

# ---------------Negative Scenarios <2> ----------------------------

  Scenario: Search Movie by title Negative Scenario-2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "game of thrones" and invalid season "1" or invalid episode "100"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

  Scenario: Search Movie by title Negative Scenario-2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "game of thrones" and invalid season "100" or invalid episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

    Then I should validate error "Series or episode not found!" in response body


    #    ---------------------<3>. Episode Example------------------------------------------------
  Scenario: Search Movie by title & season & episode-3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "NCIS" and season "1" and episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"


    Then I should validate title is "Yankee White"
    Then I should validate year  is "2003"
    Then I should validate rated "TV-PG"
    Then I should validate released is "23 Sep 2003"
    Then I should validate season is "1"
    Then I should validate episode is "1"
    Then I should validate runtime is "43 min"
    Then I should validate genre is "Action, Crime, Drama"

  Scenario: Search Movie by Category Type is episode3_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "NCIS" and season "1" and episode "1"
    Then I should validate director is "Donald P. Bellisario"
    Then I should validate writer is "Donald P. Bellisario, Don McGill"
    Then I should validate actors is "Mark Harmon, Sasha Alexander, Michael Weatherly"

  Scenario: Search Movie by Category Type is episode3_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "NCIS" and season "1" and episode "1"

    Then I should validate plot is "Aboard Air Force One a Naval officer dies after eating with the Potus, then a Marine officer (connected with AF1) also dies in Georgetown in the same way. Abby identifies the cause, and Gibbs thwarts an attempt to assassinate the ..."
    Then I should validate language is "English"
    Then I should validate country is "N/A"
    Then I should validate awards is "1 nomination"

    Then I should validate metaScore is "N/A"
#    Then I should validate imdbRating is "8.1"
#    Then I should validate imdbVotes is "1653"
    Then I should validate imdbID is "tt0658039"
    Then I should validate seriesID is "tt0364845"

    Then I should validate type is "episode"
    Then I should validate response as "True"

# ---------------Negative Scenarios <2> ----------------------------

  Scenario: Search Movie by title Negative Scenario-2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "NCIS" and invalid season "1" or invalid episode "100"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

  Scenario: Search Movie by title Negative Scenario-2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "NCIS" and invalid season "100" or invalid episode "1"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Series or episode not found!" in response body

    Then I should validate error "Series or episode not found!" in response body