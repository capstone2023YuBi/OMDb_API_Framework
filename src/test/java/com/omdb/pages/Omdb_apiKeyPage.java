package com.omdb.pages;

import com.omdb.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Omdb_apiKeyPage {

    public Omdb_apiKeyPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "(//a[.='API Key'])")
    public WebElement ApiKey;

    @FindBy(xpath = "(//input[@id='Email'])")
    public WebElement email;

    @FindBy(xpath = "(//input[@type='submit'])")
    public WebElement submit;
}
