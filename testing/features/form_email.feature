@email
Feature: Some webforms should send emails after submit
  Background:
    Given I am testing the correct domain

  @email_ask_a_librarian
  Scenario Outline: Ask a Librarian form email test
    Given I visit page "ask/email"
        And I do not see complaints about javascript
        And I enter "James Reidy" for field "edit-submitted-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-your-email-address"
        And I select "Cornell Staff" from popup "edit-submitted-status"
        And I select "<library>" from popup "edit-submitted-library"
        And I enter test email question with sequence "19" and tag "<elist>"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a thank you message

    Examples:
      | name | email | elist | library |
      |James Reidy | cul-web-test-confirm@cornell.edu | cul-web-test-confirm | Test |
      |James Reidy | cul-web-test-confirm@cornell.edu | Adelson_lib | Adelson Library (Lab of Ornithology) |
      |James Reidy | cul-web-test-confirm@cornell.edu | Africana_Library | Africana Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | engrref | Engineering Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | entomologylib | Entomology Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | fineartsref | Fine Arts Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | ilrref | Industrial & Labor Relations Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | asiaref | Kroch Library (Asia) |
      |James Reidy | cul-web-test-confirm@cornell.edu | rareref | Kroch Library (Division of Rare and Manuscript Collections) |
      |James Reidy | cul-web-test-confirm@cornell.edu | library_law | Law Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | mgtref | Management Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | mann_ref | Mann Library (Agriculture, Life Sciences and Selected Social Sciences) |
      |James Reidy | cul-web-test-confirm@cornell.edu | mathlib | Mathematics Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | musicref | Music Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | Okuref | Olin Library (Humanities & Social Sciences) |
      |James Reidy | cul-web-test-confirm@cornell.edu | pslref | Physical Sciences Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | hotellibrary | School of Hotel Administration Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | okUref | Uris Library (Humanities & Social Sciences) |
      |James Reidy | cul-web-test-confirm@cornell.edu | vetref | Veterinary Library |
      |James Reidy | cul-web-test-confirm@cornell.edu | infodesk_med | Weill Cornell Medical Library (New York City |
      |James Reidy | cul-web-test-confirm@cornell.edu | askalibrarian_qatar_med | Weill Cornell Medical College-Qatar, Distributed eLibrary |

