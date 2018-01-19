@ares
Feature: ares course reserves
  Background:
    Given I am testing the correct domain

  @ares_load
  Scenario: Load Ares cache for the other commands
    Given I go to the home page
    When I visit page "ares/search"
      And I search ares for "wine"
      And I do not see complaints about javascript
      And I do not see No current course reserve items were found.
      And I wait for the ares spinner to stop
    Then there should be at least one ares result

  @ares_popup
  Scenario: Check the autofill function of the front page popup
    Given I go to the home page
    When I enter "Permanent" in the ares search
      And I select the first option from the ares popup
    Then the ares results should contain "Introductory statistical mechanics"

  @ares_sampler
  Scenario Outline: Search ares for reserves for popular courses
    Given I visit page "ares/search"
      And I search ares for "<query>"
      And I wait for the ares spinner to stop
    Then the ares results should contain "<reserve>"

    Examples:
      | query | reserve |
      | PSYCH | Uris Library Reserve |
      | Wine | Vintner's art |
      | Ocean | Moby Dick |
      | Music | Music Library Reserve |

