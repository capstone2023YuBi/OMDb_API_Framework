package com.omdb.stepsDef;

import com.omdb.pages.Omdb_examplesPage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class examples {

    Omdb_examplesPage omdb_examplesPage = new Omdb_examplesPage();
    @When("Click the Examples button")
    public void click_the_examples_button() {
        omdb_examplesPage.Examples.click();
    }

    @Then("User should see the examples page.")
    public void user_should_see_the_examples_page() throws InterruptedException {
        String actual= Driver.getDriver().getTitle();
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
        Thread.sleep(5000);
    }

}
