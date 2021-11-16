Feature: Delete customer
  Checking delete customer functionality

  Background: Manager is on "Delete customer" page
    Given Manager enters url://www.primebanking.com/employee/
    When  Manager clicks on staff log in tab
    And   Manager enters valid credentials
    And   Clicks "Submit"
    And   Manager clicks on "Delete customer" tab
    Then  Manager is on "Delete customer" page

    Scenario: To verify that manager is able to delete customer with valid customer id
      When Manager enters "12345678" on customer id field
      And Manager clicks on "submit" button
      Then Manager is able to delete customer

    Scenario Outline: Manager is not able to delete customer with invalid customer id

      When Manager enters invalid <"Customer ID"> on customer id field
      And Manager clicks on "submit" button
      Then Manager is not able to delete customer
      And <"Error message"> is displayed on the screen
      Examples:
        | "Customer ID" |"Error message"|
        |               |Please enter valid customer ID     |
        | 1234&@87      |Please enter valid customer ID  |
        | 123ghyu556    |Please enter valid customer ID |
        |  12456655     |  Please enter valid customer ID |
        | 124"@df56655  |  Please enter valid customer ID |


