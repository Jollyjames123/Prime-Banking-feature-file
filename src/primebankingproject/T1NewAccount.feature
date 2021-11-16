Feature: New Account
  Checking customer ID technical requirements

  Background: Manager is on new account registration page
    Given Manager is on url://www.primebanking.com/employee/
    When  Manager clicks on staff log in tab
    And   Manager enters valid credentials
    And   Clicks "Submit"
    And   Manager clicks on new account tab
    Then  Manager is on new account registratioin page

  Scenario Outline: Manager can not open a new account with invalid details
    When  manager enters <"Customer ID"> in the "Customer ID" field
    And   manager selects <"Account Type"> from drop down menu
    And   manager enters <"Initial Deposit"> amount in Initial deposit field
    And   manager clicks on "Submit" button
    Then  Manager is not able to open a new account
    Examples:
      | "Customer ID" | "Account Type" | "Initial Deposit" |
      | 1234@678      | Saving         | £500              |
      |               | Saving         | £500              |
      | abcdwfgh      | Saving         | £500              |
      | 1234abcd      | Saving         | £500              |
      | 1234678       | Saving         | £500              |
      | @$%#          | Saving         | £500              |
      | 12345678      |                | £500              |
      | 12345678      | Saving         |                   |
      | 12345678      | Saving         | -£500             |
      | 12345678      | Saving         | £**@              |
      | 12345678      | Saving         | £ADF              |
      | 1234@678      | Current        | £500              |
      |               | Current        | £500              |
      | abcdwfgh      | Current        | £500              |
      | 1234abcd      | Current        | £500              |
      | 1234678       | Current        | £500              |
      | @$%#          | Current        | £500              |
      | 12345678      |                | £500              |
      | 12345678      | Current        |                   |
      | 12345678      | Current        | -£500             |
      | 12345678      | Current        | £**@              |
      | 12345678      | Current        | £ADF              |


  Scenario Outline: Manager is able to open multiple accounts for customers
    When  manager selects <"Personal/Business"> radio button
    When  manager selects <"Single/joint"> radio button
    When  manager enters <"Customer1 ID"> in the "Customer1 ID" field
    When  manager enters <"Customer2 ID"> in the "Customer2 ID" field
    And   manager selects valid <"Account type"> from drop down menu
    And   manager enters <"Initial deposit"> amount in Initial deposit field
    And   manager clicks on "Submit" button
    Then  Manager has open a new account
    Examples:
      | "Personal/Business" | "Single/joint" | "Customer1 ID" | "Customer2 ID" | "Account type" | "Initial deposit" |
      | Personal            | Single         | 12345678       |                | Saving         | £500              |
      | Personal            | Single         | 12345678       |                | Saving         | £500              |
      | Personal            | Single         | 56784321       |                | Current        | £500              |
      | Personal            | Single         | 56784321       |                | Current        | £500              |
      | Personal            | Single         | 15678523       |                | Saving         | £500              |
      | Personal            | Single         | 15678523       |                | Current        | £500              |
      | Personal            | Single         | 7777888        |                | Saving         | £500              |
      | Personal            | Joint          | 7777888        | 98989898       | Current        | £500              |
      | Personal            | Single         | 11114444       |                | Saving         | £500              |
      | Personal            | Joint          | 11114444       | 25252525       | Current        | £500              |
      | Business            | Single         | 32326565       |                | Current        | £500              |
      | Business            | Single         | 32326565       |                | Current        | £500              |


  Scenario Outline: Manager is able to open multiple accounts for a single customer
    When  manager enters <"Customer ID"> in the "Customer ID" field
    And   manager select valid <"Account type"> from drop down menu
    And   manager enters <"Initial deposit"> amount in Initial deposit field
    And   manager clicks on "Submit" button
    Then  Manager has open a new account
