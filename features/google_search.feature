@google
Feature: Search

  Scenario: Search by text term
    Given A text term string is inputted
    When The search button is clicked
    Then A list of search results is displayed