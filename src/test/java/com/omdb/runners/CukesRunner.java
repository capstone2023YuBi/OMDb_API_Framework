package com.omdb.runners;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"html:target/cucumber-report.html",
                "json:target/cucumber.json",
                "rerun:target/rerun.txt"
        },
        features = "src/test/resources/features",
        glue = "com/omdb/stepsDef",
        dryRun = false,
        tags = "@odbc"
//        tags = "@UI_Test, @odbc, @API_Smoke, @Omdb_Regression"
    )

public class CukesRunner {
}
