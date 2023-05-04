package com.omdb.stepsDef;

import com.omdb.pages.Omdb_parameters;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class parameters {

    Omdb_parameters omdb_parameters = new Omdb_parameters();


    @When("Click the parameters button")
    public void click_the_parameters_button() {
        omdb_parameters.Parameters.click();
    }

    @Then("User should see the parameters page.")
    public void user_should_see_the_parameters_page() throws InterruptedException {
        String actual= Driver.getDriver().getTitle();
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
        Thread.sleep(3000);
    }
}
