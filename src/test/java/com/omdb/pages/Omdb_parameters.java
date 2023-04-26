package com.omdb.pages;

import com.omdb.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class Omdb_parameters {
    public Omdb_parameters() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "(//a[.='Parameters'])")
    public  WebElement Parameters;
}
