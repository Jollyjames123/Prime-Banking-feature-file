Feature: Balance Enquiry
Checking the balance enquiry functionality

  Background: Manager is on "Balance Enquiry" page
    Given Manager enters url://www.primebanking.com/employee/
    When  Manager clicks on staff log in tab
    And   Manager enters valid credentials
    And   Clicks "Submit"
    And   Manager clicks on "Balance Enquiry" tab
    Then  Manager is on "Balance Enquiry" page

    Scenario Outline: Account Number on balance enquiry page has valid data

      When Manager enters <"Account Number"> on the "Balance Enquiry" page
      And Manager clicks on "submit" button
      Then Manager is able to view customers account balance succesfully
      Examples:
        | "Account Number" |
        | 12345678         |
        | &*"""             |
        | 12345%""        |
        | 127abx58er"     |
        | abcedfer        |
        |                 |
        | 1356..12        |
        |  356..12        |
        | 123-            |
