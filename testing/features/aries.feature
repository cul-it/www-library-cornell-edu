@ares
Feature: ares course reserves
  Background:
    Given I am testing the correct domain

  @ares_load
  Scenario: Load Ares cache for the other commands
    Given I go to the home page
    When I visit page "ares/search"
      And I search ares for "PSYCH 1101"
      And I wait for the ares spinner to stop
    Then the ares results should contain "Uris Library Reserve"

  @ares_popup
  Scenario: Check the autofill function of the front page popup
    Given I go to the home page
    When I enter "Permanent" in the ares search
      And I select the first option from the ares popup
    Then the ares results should contain "Introductory statistical mechanics"
