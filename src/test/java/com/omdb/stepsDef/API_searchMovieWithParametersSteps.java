package com.omdb.stepsDef;

import com.omdb.utilities.APIUtils;
import com.omdb.utilities.ConfigurationReader;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import static io.restassured.RestAssured.given;



public class API_searchMovieWithParametersSteps {

    String baseUrl="";
    String apiKey="";
    Response response;


    @Given("Get the Omdb credentials from Configuration file")
    public void getTheOmdbCredentialsFromConfigurationFile() {
        baseUrl= ConfigurationReader.getProperty("baseUrl");
        apiKey = ConfigurationReader.getProperty("apiKey");
    }

    @When("I call get request to Omdb API using ImdbID {string}")
    public void iCallGetRequestToOmdbAPIUsingImdbID(String imdbID) {
        response =
                given()
                 .log().all()
                .baseUri(baseUrl)
                .queryParam("apikey", apiKey)
                .queryParam("r","json")
                .queryParam("i",imdbID).
                when()
                .get()
                .thenReturn();
        response.prettyPrint();

    }

    @Then("I should validate status code is {string}")
    public void iShouldValidateStatusCodeIs(String expectedResult) {
        APIUtils.statusCodeCheck(response,expectedResult);

    }

    @Then("I should validate content type is {string}")
    public void iShouldValidateContentTypeIs(String expectedContentType) {
        APIUtils.contentTypeCheck(response, expectedContentType);

    }

    @Then("I should validate title is {string}")
    public void iShouldValidateTitleIs(String expectedTitle) {
        String path= "Title";
        APIUtils.doValidation(response, path,expectedTitle);

    }

    @Then("I should validate year  is {string}")
    public void iShouldValidateYearIs(String expectedYear) {
        String path= "Year";
        APIUtils.doValidation(response, path,expectedYear);
    }

    @Then("I should validate rated {string}")
    public void iShouldValidateRated(String expectedRated) {
        String path= "Rated";
        APIUtils.doValidation(response, path,expectedRated);

    }

    @Then("I should validate released is {string}")
    public void iShouldValidateReleasedIs(String expectedReleased) {
        String path= "Released";
        APIUtils.doValidation(response, path,expectedReleased);
    }

    @Then("I should validate runtime is {string}")
    public void iShouldValidateRuntimeIs(String expectedRuntime) {
        String path= "Runtime";
        APIUtils.doValidation(response, path,expectedRuntime);
    }

    @Then("I should validate genre is {string}")
    public void iShouldValidateGenreIs(String expectedGenre) {
        String path= "Genre";
        APIUtils.doValidation(response, path,expectedGenre);
    }

    @Then("I should validate director is {string}")
    public void iShouldValidateDirectorIs(String expectedDirector) {
        String path= "Director";
        APIUtils.doValidation(response, path,expectedDirector);
    }

    @Then("I should validate writer is {string}")
    public void iShouldValidateWriterIs(String expectedWriter) {
        String path= "Writer";
        APIUtils.doValidation(response, path,expectedWriter);
    }

    @Then("I should validate actors is {string}")
    public void iShouldValidateActorsIs(String expectedActors) {
        String path= "Actors";
        APIUtils.doValidation(response, path,expectedActors);
    }

    @Then("I should validate plot is {string}")
    public void iShouldValidatePlotIs(String expectedPlot) {
        String path= "Plot";
        APIUtils.doValidation(response, path,expectedPlot);
    }

    @Then("I should validate language is {string}")
    public void iShouldValidateLanguageIs(String expectedLanguage) {
        String path= "Language";
        APIUtils.doValidation(response, path,expectedLanguage);
    }

    @Then("I should validate country is {string}")
    public void iShouldValidateCountryIs(String expectedCountry) {
        String path= "Country";
        APIUtils.doValidation(response, path,expectedCountry);
    }

    @Then("I should validate awards is {string}")
    public void iShouldValidateAwardsIs(String expectedAwards) {
        String path= "Awards";
        APIUtils.doValidation(response, path,expectedAwards);
    }

    @Then("I should validate metaScore is {string}")
    public void iShouldValidateMetaScoreIs(String expectedMetascore) {
        String path= "Metascore";
        APIUtils.doValidation(response, path,expectedMetascore);
    }

    @Then("I should validate imdbRating is {string}")
    public void iShouldValidateImdbRatingIs(String expectedImdbRating) {
        String path= "imdbRating";
        APIUtils.doValidation(response, path,expectedImdbRating);
    }

    @Then("I should validate imdbVotes is {string}")
    public void iShouldValidateImdbVotesIs(String expectedImdbVotes) {
        String path= "imdbVotes";
        APIUtils.doValidation(response, path,expectedImdbVotes);
    }

    @Then("I should validate imdbID is {string}")
    public void iShouldValidateImdbIDIs(String expectedImdbID) {
        String path= "imdbID";
        APIUtils.doValidation(response, path,expectedImdbID);
    }

    @Then("I should validate type is {string}")
    public void iShouldValidateTypeIs(String expectedType) {
        String path= "Type";
        APIUtils.doValidation(response, path,expectedType);
    }

//    ----------------< Search by Title >----------------------
    @When("I call get request to Omdb API using title {string}")
    public void iCallGetRequestToOmdbAPIUsingTitle(String title) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("t",title).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }


    //    ----------------< Search by Category type is <movie> >----------------------

    @When("I call get request to search a movie Omdb API using by category  type is movie {string} name is {string}")
    public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsNameIs(String categoryType, String movieName) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("type",categoryType)
                        .queryParam("s",movieName).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();


    }

    @Then("I should validate totalResult as {string}")
    public void iShouldValidateTotalResultAs(String expectedTotalResult) {
        String path= "totalResults";
        APIUtils.doValidation(response, path,expectedTotalResult);
    }

    @Then("I should validate response as {string}")
    public void iShouldValidateResponseAs(String expectedResponse) {
        String path= "Response";
        APIUtils.doValidation(response, path,expectedResponse);
    }



    //    ----------------< Search by Category type is <series> >----------------------

    @When("I call get request to search a movie Omdb API using by category  type is series {string} name is {string}")
    public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsSeriesNameIs(String categoryType, String seriesName) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("type",categoryType)
                        .queryParam("s",seriesName).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();


    }


    //    ----------------< Search by Category type is <episode> >----------------------

    @When("I call get request to Omdb API using title {string} and season {string} and episode {string}")
    public void iCallGetRequestToOmdbAPIUsingTitleAndSeasonAndEpisode(String title, String season, String episode) {

        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("t",title)
                        .queryParam("season",season)
                        .queryParam("episode",episode).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }

    @Then("I should validate season is {string}")
    public void iShouldValidateSeasonIs(String season) {
        String path= "Season";
        APIUtils.doValidation(response, path,season);
    }

    @Then("I should validate episode is {string}")
    public void iShouldValidateEpisodeIs(String episode) {
        String path= "Episode";
        APIUtils.doValidation(response, path,episode);
    }

    @Then("I should validate seriesID is {string}")
    public void iShouldValidateSeriesIDIs(String seriesID) {
        String path= "seriesID";
        APIUtils.doValidation(response, path,seriesID);
    }


//    ****************** NEGATIVE SCENARIOS STEPS ************************
//    -----------------> Invalid ImdbID SCENARIOS STEPS <-----------------------

    @When("I call get request to Omdb API using invalid ImdbID {string}")
    public void iCallGetRequestToOmdbAPIUsingInvalidImdbID(String invalidImdbID) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("i",invalidImdbID).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }

    @When("I call get request to Omdb API using double ImdbID {string} {string}")
    public void iCallGetRequestToOmdbAPIUsingDoubleImdbID(String imdbID1, String imdbID2) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("i",imdbID1)
                        .queryParam("i",imdbID2).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();

    }


    @Then("I should validate response {string} in response body")
    public void iShouldValidateResponseInResponseBody(String expectedResponse) {
        String path= "Response";
        APIUtils.doValidation(response, path,expectedResponse);
    }

    @Then("I should validate error {string} in response body")
    public void iShouldValidateErrorInResponseBody(String expectedError) {
        String path= "Error";
        APIUtils.doValidation(response, path,expectedError);
    }




    //    -----------------> Invalid Title SCENARIOS STEPS <-----------------------


    @When("I call get request to Omdb API using invalid title {string}")
    public void iCallGetRequestToOmdbAPIUsingInvalidTitle(String invalidTitle) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("t",invalidTitle).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();

    }

    @When("I call get request to Omdb API using double title {string} {string}")
    public void iCallGetRequestToOmdbAPIUsingDoubleTitle(String invalidTitle1, String invalidTitle2) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("t",invalidTitle1)
                        .queryParam("t",invalidTitle2).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }

//    -----------------> Invalid Category=movie SCENARIOS STEPS <-----------------------


    @When("I call get request to search a movie Omdb API using by category  type is movie {string} with an invalid name is {string}")
    public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsWithAnInvalidNameIs(String categoryType, String movieName) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("type",categoryType)
                        .queryParam("s",movieName).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();


    }


    @When("I call get request to search a movie Omdb API using by category  type is {string} with invalid double movie name {string} {string}")
    public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsWithInvalidDoubleMovieName (String categoryType, String movieName1, String movieName2) {
        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("type",categoryType)
                        .queryParam("s",movieName1)
                        .queryParam("s",movieName2).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }

//  -----------------> Invalid Category=series SCENARIOS STEPS <-----------------------


@When("I call get request to search a movie Omdb API using by category  type is series {string} with an invalid name is {string}")
public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsSeriesWithAnInvalidNameIs(String categoryType, String movieName) {
        response =
        given()
        .log().all()
        .baseUri(baseUrl)
        .queryParam("apikey", apiKey)
        .queryParam("r","json")
        .queryParam("type",categoryType)
        .queryParam("s",movieName).
        when()
        .get()
        .thenReturn();
        response.prettyPrint();


        }


@When("I call get request to search a movie Omdb API using by category  type is series {string} with invalid double movie name {string} {string}")
public void iCallGetRequestToSearchAMovieOmdbAPIUsingByCategoryTypeIsSeriesWithInvalidDoubleMovieName (String categoryType, String movieName1, String movieName2) {
        response =
        given()
        .log().all()
        .baseUri(baseUrl)
        .queryParam("apikey", apiKey)
        .queryParam("r","json")
        .queryParam("type",categoryType)
        .queryParam("s",movieName1)
        .queryParam("s",movieName2).
        when()
        .get()
        .thenReturn();
        response.prettyPrint();
        }

    //  -----------------> Invalid Category=episode SCENARIOS STEPS <-----------------------


    @When("I call get request to Omdb API using title {string} and invalid season {string} or invalid episode {string}")
    public void iCallGetRequestToOmdbAPIUsingTitleAndInvalidSeasonOrInvalidEpisode(String title, String season, String episode) {

        response =
                given()
                        .log().all()
                        .baseUri(baseUrl)
                        .queryParam("apikey", apiKey)
                        .queryParam("r","json")
                        .queryParam("t",title)
                        .queryParam("season",season)
                        .queryParam("episode",episode).
                        when()
                        .get()
                        .thenReturn();
        response.prettyPrint();
    }

}