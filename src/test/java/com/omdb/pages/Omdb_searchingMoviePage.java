package com.omdb.pages;

import com.omdb.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Omdb_searchingMoviePage {

    public Omdb_searchingMoviePage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//input[@id='t']")
    public WebElement searchingMovie;

    @FindBy(xpath = "(//input[@id='y']")
    public WebElement year;

    @FindBy(xpath = "//button[@id='search-by-title-button']")
    public WebElement searchingButton;

    @FindBy(xpath = "//button[@id='search-by-title-reset']")
    public WebElement searchingReset;

}
