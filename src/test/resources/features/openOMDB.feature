@Smoke
@odbc


  Feature: Omdb Usage feature

    Background: User is on the OMDB homepage

    Scenario: Openning OMDB
    Given  User is on the OMDB home page
    Then Validating

        Scenario:
            When Click the Usage button
            Then User should see the Usage page.

          When Click the parameters button
          Then User should see the parameters page.

          When Click the Examples button
          Then User should see the examples page.

          When Click the ChangeLog button
          Then User should see the ChangeLog page.

          When Click the ApiKey button
          Then User should see the ApiKey page.
