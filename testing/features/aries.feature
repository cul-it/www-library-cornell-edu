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
    Given PENDING : autofill handled by javascript not available in headless
      And I go to the home page
    When I enter "Permanent" in the ares search
    Then the ares popup should contain "Math Library Permanent Reserves"

  @ares_sampler
  Scenario Outline: Search ares for reserves for popular courses
    Given I visit page "ares/search"
      And I search ares for "<query>"
      And I do not see complaints about javascript
      And I wait for the ares spinner to stop
    Then the ares results should contain "<reserve>"

    Examples:
      | query | reserve |
      | PSYCH | Uris Library Reserve |
      | Wine | Wine for dummies |
      | Ocean | Moby Dick |
      | Music | Uris Library Reserve  |

