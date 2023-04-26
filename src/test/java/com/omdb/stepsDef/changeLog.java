package com.omdb.stepsDef;

import com.omdb.pages.Omdb_changeLogPage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class changeLog {

    Omdb_changeLogPage omdb_changeLogPage = new Omdb_changeLogPage();
    @When("Click the ChangeLog button")
    public void click_the_change_log_button() {
        omdb_changeLogPage.ChangeLog.click();
    }

    @Then("User should see the ChangeLog page.")
    public void user_should_see_the_change_log_page() {
        String actual= Driver.getDriver().getTitle();
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
    }
}
