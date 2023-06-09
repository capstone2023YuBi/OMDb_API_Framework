package com.omdb.runners;

import com.omdb.utilities.Driver;
import io.cucumber.java.Scenario;
import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

    @Before
    public void setUp() {

    }

    @After
    public void tearDown(Scenario scenario) {
        final byte[] screenshot =  ((TakesScreenshot) Driver.getDriver()).getScreenshotAs((OutputType.BYTES));
        if (scenario.isFailed()) {
            scenario.attach(screenshot,"image/png","screenshot");
        }
        Driver.closeDriver();
    }
}
