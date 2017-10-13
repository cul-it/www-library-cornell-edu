@hours
Feature: Library Hours
  Background:
    Given I am testing the correct domain

  @hours_find
  Scenario: Hours page available
    Given I go to the home page
      And I click on the "Libraries and Hours" link
    Then the page title should start with "Libraries and Hours"

  @hours_libraries_listing
  Scenario Outline: All the libraries should be listed on the hours page
    Given I visit page "libraries"
    Then I should see the hours listing for "<library>"

    Examples:
      | library |
      | Africana Library |
      | Olin Library |
      | Medical Library |
