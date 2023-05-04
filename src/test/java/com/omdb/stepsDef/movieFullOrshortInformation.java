package com.omdb.stepsDef;

import com.omdb.pages.Omdb_movieInformationPage;
import com.omdb.utilities.Driver;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

public class movieFullOrshortInformation {

Omdb_movieInformationPage omdb_movieInformationPage = new Omdb_movieInformationPage();

    @When("selecting the full button in the dropdown")
    public void selecting_the_full_button_in_the_dropdown() {
    Select movieInformation = new Select(Driver.getDriver().findElement(By.xpath("//select[@name='plot']")));
    movieInformation.selectByIndex(1);
    }
    @Then("User see full information about the movie")
    public void user_see_full_information_about_the_movie() {

    }
}
