package com.omdb.stepsDef;

import com.omdb.pages.Omdb_homepage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class omdbOpenning {
    Omdb_homepage omdb_homepage = new Omdb_homepage();
    @Given("User is on the OMDB home page")
    public void user_is_on_the_omdb_home_page() {
        // Write code here that turns the phrase above into concrete actions
        Driver.getDriver().get("https://www.omdbapi.com");
        }


    @Then("Validating")
    public void validating() {
        // Write code here that turns the phrase above into concrete actions
        String actual= Driver.getDriver().getTitle();
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
        }

    @When("Click the Usage button")
    public void click_the_usage_button() {
        omdb_homepage.Usage.click();
    }

    @Then("User should see the Usage page.")
    public void user_should_see_the_usage_page() {
        String actualtitle= Driver.getDriver().getTitle();
        System.out.println("actualtitle = " + actualtitle);
        //Assert.assertTrue(actualtitle.contains(expectedTitle));
    }
}
