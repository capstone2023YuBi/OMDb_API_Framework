package com.omdb.pages;

import com.omdb.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Omdb_examplesPage {
    public Omdb_examplesPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "(//a[.='Examples'])")
    public WebElement Examples;


}
