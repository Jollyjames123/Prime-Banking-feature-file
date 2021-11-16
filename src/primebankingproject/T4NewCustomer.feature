Feature: New Customer Registration
  Checkig new  customer registration from functionality

  Background: Manager is on new customer registration page
    Given Manager is on url://www.primebanking.com/employee/
    When  Manager clicks on staff log in tab
    And   Manager enters valid credentials
    And   Clicks "Submit"
    And   Manager clicks on new customer registration tab
    Then  Manager is on new customer registratioin page

    Scenario Outline: Manager can register new customer correctly
      When         manager enters <"Customer name"> in the "customer name" field
      And          manager enters <"Address"> in the "Address" field
      And          manager enters <"City"> in the "City" field
      And          manager enters <"State"> in the "State" field
      And          manager enters <"Pin"> in the "Pin" field
      And          manager enters <"Telephone Number"> in the "Telephone Number" field
      And          manager enters <"Email "> in the "Email" field
      And          manager clicks on "Submit" button
      Then         manager has successfully registered new customer
      Examples:
        | "Customer name" | "Address" | "City" | "State" | "Pin"  | "Telephone Number" | "Email "          |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan 12345    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan 132@3    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        |                 | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        |  hetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    |  23 A Lane| Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    |           | Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A@Lae | Pune   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane|        | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane|  une   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| 1234   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| @@ne   | Alpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   |         | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | 1234    | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   |  lpha   | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | """"    | 123456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   |        | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | @@@@   | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   |  23456 | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | dfssss | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 12345  | 0123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 |                    | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | @@@@@@@@@          | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 01ojoj6789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 |  123456789         | chetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         |                   |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         |  hetan@chetan.com |
        | Chetan Patel    | 123 A Lane| Pune   | Alpha   | 123456 | 0123456789         | email ID          |



