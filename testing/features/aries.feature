@ares
Feature: ares course reserves
  Background:
    Given I am testing the correct domain

  @ares_load
  Scenario: Load Ares cache for the other commands
    Given I go to the home page
    Then I visit page "ares/search"
    Then the page should show content "Search Course Reserves"
    Then I wait for 20 sec
    Then I search ares for "101"
    Then the page should show content "Introduction"

  @ares_popup
  Scenario: Check the autofill function of the front page popup
    Given I go to the home page
    Then I enter "Perm" in the ares search
    Then I wait for 1 sec
    Then I select the first option from the ares popup
    Then I should see page title having partial text as "Search Course Reserves"
    Then I wait 5 seconds for element having class "ares-title" to display
    Then the page should show content "Introduction"
