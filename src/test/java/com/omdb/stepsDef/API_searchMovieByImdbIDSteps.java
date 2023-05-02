package com.omdb.stepsDef;

import com.omdb.utilities.APIUtils;
import com.omdb.utilities.ConfigurationReader;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import org.junit.Assert;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.is;


public class API_searchMovieByImdbIDSteps {

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
                .queryParam("i","tt3874544").
                when()
                .get()
                .thenReturn();
        response.prettyPrint();


    }

    @Then("I should validate status code is {string}")
    public void iShouldValidateStatusCodeIs(String expectedResult) {
        APIUtils.statusCodeCheck(response,expectedResult);
//        String actualResult = response.contentType();
//        Assert.assertEquals(actualResult, expectedResult);

    }

    @Then("I should validate content type is {string}")
    public void iShouldValidateContentTypeIs(String arg0) {

    }

    @Then("I should validate title is {string}")
    public void iShouldValidateTitleIs(String arg0) {

    }

    @Then("I should validate year  is {string}")
    public void iShouldValidateYearIs(String arg0) {

    }

    @Then("I should validate rated {string}")
    public void iShouldValidateRated(String arg0) {

    }

    @Then("I should validate released is {string}")
    public void iShouldValidateReleasedIs(String arg0) {

    }

    @Then("I should validate runtime is {string}")
    public void iShouldValidateRuntimeIs(String arg0) {

    }

    @Then("I should validate genre is {string}")
    public void iShouldValidateGenreIs(String arg0) {

    }

    @Then("I should validate director is {string}")
    public void iShouldValidateDirectorIs(String arg0) {

    }

    @Then("I should validate writer is {string}")
    public void iShouldValidateWriterIs(String arg0) {

    }

    @Then("I should validate actors is {string}")
    public void iShouldValidateActorsIs(String arg0) {

    }

    @Then("I should validate plot is {string}")
    public void iShouldValidatePlotIs(String arg0) {
    }

    @Then("I should validate language is {string}")
    public void iShouldValidateLanguageIs(String arg0) {
    }

    @Then("I should validate country is {string}")
    public void iShouldValidateCountryIs(String arg0) {
    }

    @Then("I should validate awards is {string}")
    public void iShouldValidateAwardsIs(String arg0) {
    }

    @Then("I should validate metaScore is {string}")
    public void iShouldValidateMetaScoreIs(String arg0) {
    }

    @Then("I should validate imdbRating is {string}")
    public void iShouldValidateImdbRatingIs(String arg0) {
    }

    @Then("I should validate imdbVotes is {string}")
    public void iShouldValidateImdbVotesIs(String arg0) {
    }

    @Then("I should validate imdbID is {string}")
    public void iShouldValidateImdbIDIs(String arg0) {
    }

    @Then("I should validate type is {string}")
    public void iShouldValidateTypeIs(String arg0) {
    }
}
