@odbc
#@API_Omdb


Feature: -API- Omdb Search Movie by ImdbID



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
     Then I should validate imdbRating is "6.3"
#     Then I should validate imdbVotes is "131,708"

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
    Then I should validate imdbRating is "7.9"
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
    Then I should validate imdbRating is "8.3"
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