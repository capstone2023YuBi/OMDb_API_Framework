@odbc

Feature: -API- Omdb Regression Test



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


  Scenario: Search Movie by title2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "Avatar"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "Avatar"
    Then I should validate year  is "2009"

    Then I should validate rated "PG-13"
    Then I should validate released is "18 Dec 2009"
    Then I should validate runtime is "162 min"
    Then I should validate genre is "Action, Adventure, Fantasy"

  Scenario: Search Movie by title2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "Avatar"
    Then I should validate director is "James Cameron"
    Then I should validate writer is "James Cameron"
    Then I should validate actors is "Sam Worthington, Zoe Saldana, Sigourney Weaver"

  Scenario: Search Movie by title2_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "Avatar"
    Then I should validate plot is "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home."
    Then I should validate language is "English, Spanish"
    Then I should validate country is "United States"
    Then I should validate awards is "Won 3 Oscars. 89 wins & 131 nominations total"

    Then I should validate metaScore is "83"
#    Then I should validate imdbRating is "7.9"
#    Then I should validate imdbVotes is "1,332,344"

    Then I should validate title is "Avatar"
    Then I should validate type is "movie"

# ---------------Negative Scenarios ----------------------------

  Scenario: Search Movie by title Negative Scenario-2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using invalid title "Avatarrr"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by title Negative Scenario-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using double title "Avatarrr-1" "Avatarrr-2"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by title3_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Hunt"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "The Hunt"
    Then I should validate year  is "2012"

    Then I should validate rated "R"
    Then I should validate released is "10 Jan 2013"
    Then I should validate runtime is "115 min"
    Then I should validate genre is "Drama"

  Scenario: Search Movie by title3_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Hunt"
    Then I should validate director is "Thomas Vinterberg"
    Then I should validate writer is "Thomas Vinterberg, Tobias Lindholm"
    Then I should validate actors is "Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp"

  Scenario: Search Movie by title3_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using title "The Hunt"
    Then I should validate plot is "A teacher lives a lonely life, all the while struggling over his son's custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent li..."
    Then I should validate language is "Danish, English, Polish"
    Then I should validate country is "Denmark, Sweden"
    Then I should validate awards is "Nominated for 1 Oscar. 38 wins & 73 nominations total"

    Then I should validate metaScore is "77"
#    Then I should validate imdbRating is "8.3"
#    Then I should validate imdbVotes is "338,553"

    Then I should validate title is "The Hunt"
    Then I should validate type is "movie"

    # ---------------Negative Scenarios ----------------------------

  Scenario: Search Movie by title Negative Scenario-1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using invalid title "The Hunttt"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body

  Scenario: Search Movie by title Negative Scenario-2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using double title "The Hunttt-1" "The Hunttt-2"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate response "False" in response body
    Then I should validate error "Movie not found!" in response body



    #########################################################################

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



    #########################################################################

  Scenario: Search Movie by Category Type is movie-1
    Given Get the Omdb credentials from Configuration file
    When I call get request to search a movie Omdb API using by category  type is movie "movie" name is "Superman"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

#    Then I should validate totalResult as "259"
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

#    Then I should validate totalResult as "54"
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


    #########################################################################


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
#    Then I should validate imdbVotes is "131,708"

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


  Scenario: Search Movie by ImdbID2_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt0499549"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "Avatar"
    Then I should validate year  is "2009"

    Then I should validate rated "PG-13"
    Then I should validate released is "18 Dec 2009"
    Then I should validate runtime is "162 min"
    Then I should validate genre is "Action, Adventure, Fantasy"

  Scenario: Search Movie by ImdbID2_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt0499549"
    Then I should validate director is "James Cameron"
    Then I should validate writer is "James Cameron"
    Then I should validate actors is "Sam Worthington, Zoe Saldana, Sigourney Weaver"

  Scenario: Search Movie by ImdbID2_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt0499549"
    Then I should validate plot is "A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home."
    Then I should validate language is "English, Spanish"
    Then I should validate country is "United States"
    Then I should validate awards is "Won 3 Oscars. 89 wins & 131 nominations total"

    Then I should validate metaScore is "83"
#    Then I should validate imdbRating is "7.9"
#    Then I should validate imdbVotes is "1,332,344"

    Then I should validate imdbID is "tt0499549"
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

  Scenario: Search Movie by ImdbID3_1
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt2106476"

    Then I should validate status code is "200"
    Then I should validate content type is "application/json; charset=utf-8"

    Then I should validate title is "The Hunt"
    Then I should validate year  is "2012"

    Then I should validate rated "R"
    Then I should validate released is "10 Jan 2013"
    Then I should validate runtime is "115 min"
    Then I should validate genre is "Drama"

  Scenario: Search Movie by ImdbID3_2
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt2106476"
    Then I should validate director is "Thomas Vinterberg"
    Then I should validate writer is "Thomas Vinterberg, Tobias Lindholm"
    Then I should validate actors is "Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp"

  Scenario: Search Movie by ImdbID3_3
    Given Get the Omdb credentials from Configuration file
    When I call get request to Omdb API using ImdbID "tt2106476"
    Then I should validate plot is "A teacher lives a lonely life, all the while struggling over his son's custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent li..."
    Then I should validate language is "Danish, English, Polish"
    Then I should validate country is "Denmark, Sweden"
    Then I should validate awards is "Nominated for 1 Oscar. 38 wins & 73 nominations total"

    Then I should validate metaScore is "77"
#    Then I should validate imdbRating is "8.3"
#    Then I should validate imdbVotes is "338,553"

    Then I should validate imdbID is "tt2106476"
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

    #########################################################################