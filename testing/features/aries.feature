@aries
Feature: Aries course reserves
  Background:
    Given I am testing the correct domain

  Scenario: Load Ares cache for the other commands
    Given I go to the home page
    Then I visit page "ares/search"
    Then the page should show content "Search Course Reserves"
    Then I wait for 20 sec
    Then I search aries for "101"
    Then the page should show content "Introduction"
