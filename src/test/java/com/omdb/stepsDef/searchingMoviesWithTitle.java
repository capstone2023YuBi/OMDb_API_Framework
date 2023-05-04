package com.omdb.stepsDef;

import com.omdb.pages.Omdb_searchingMoviePage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import javax.swing.*;

public class searchingMoviesWithTitle {

Omdb_searchingMoviePage omdb_searchingMoviePage = new Omdb_searchingMoviePage();
    @When("typing {string} in the search box")
    public void typing_back_to_the_future(String movie) throws InterruptedException {
        omdb_searchingMoviePage.searchingMovie.sendKeys(movie+Keys.ENTER);
        omdb_searchingMoviePage.searchingButton.click();
        Thread.sleep(2000);
        omdb_searchingMoviePage.searchingReset.click();
        //omdb_searchingMoviePage.searchingMovie.sendKeys(movie+Keys.BACK_SPACE);

        //Actions actions = new Actions(Driver.getDriver());
        //actions.moveToElement(omdb_searchingMoviePage.searchingMovie).perform();

    }

    @Then("User see the movie information")
public void user_see_the_movie_information() throws InterruptedException {

        String actual= Driver.getDriver().getTitle();
        System.out.println("actual = " + actual);
        String expected= "OMDb API - The Open Movie Database";
        Assert.assertEquals(actual,expected);
        Assert.assertTrue("Error message is not displayed! ",omdb_searchingMoviePage.searchingMovie.isDisplayed());
        Thread.sleep(3000);
    }

}
