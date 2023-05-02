@API_Omdb


Feature: Omdb Search Movie by ImdbID



  Scenario: Search Movie by ImdbID
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

     Then I should validate director is "Tom McGrath"
     Then I should validate writer is "Michael McCullers, Marla Frazee"
     Then I should validate actors is "Alec Baldwin, Steve Buscemi, Jimmy Kimmel"

     Then I should validate plot is "A suit-wearing, briefcase-carrying baby pairs up with his 7-year old brother to stop the dastardly plot of the CEO of Puppy Co."
     Then I should validate language is "English, Spanish"
     Then I should validate country is "United States"
     Then I should validate awards is "Nominated for 1 Oscar. 4 wins & 21 nominations total"

     Then I should validate metaScore is "50"
     Then I should validate imdbRating is "6.3"
     Then I should validate imdbVotes is "131,708"

     Then I should validate imdbID is "tt3874544"
     Then I should validate type is "movie"


