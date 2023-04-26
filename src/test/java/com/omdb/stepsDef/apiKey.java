package com.omdb.stepsDef;

import com.omdb.pages.Omdb_apiKeyPage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class apiKey {

Omdb_apiKeyPage omdb_apiKeyPage = new Omdb_apiKeyPage();
    @When("Click the ApiKey button")
    public void click_the_api_key_button() {
        omdb_apiKeyPage.ApiKey.click();
    }

    @Then("User should see the ApiKey page.")
    public void user_should_see_the_api_key_page() {
        String actual= Driver.getDriver().getTitle();
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
    }
}
