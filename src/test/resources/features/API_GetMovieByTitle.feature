@odbc
#@API_Omdb


Feature: -API- Omdb Search Movie by title



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
    Then I should validate imdbRating is "6.3"
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
    Then I should validate imdbRating is "7.9"
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
    Then I should validate imdbRating is "8.3"
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