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
    Then I select the first option from the ares popup
    Then the page title should start with "Search Course Reserves"
    Then the first ares reserve title should be "Introductory statistical mechanics"
