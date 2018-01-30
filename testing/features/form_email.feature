@email
Feature: Some webforms should send emails after submit
  Background:
    Given I am testing the correct domain

  @email_ask_a_librarian
  # https://www.library.cornell.edu/ask/email
  Scenario Outline: Ask a Librarian form email test
    Given I visit page "ask/email"
        And I do not see complaints about javascript
        And I enter "James Reidy" for field "edit-submitted-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-your-email-address"
        And I select "Cornell Staff" from popup "edit-submitted-status"
        And I select "<library>" from popup "edit-submitted-library"
        And I enter test email question into "edit-submitted-your-question" with sequence "19" and tag "<elist>"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a thank you message

    Examples:
      | elist | library |
      | cul-web-test-confirm | Test |
      | Adelson_lib | Adelson Library (Lab of Ornithology) |
      | Africana_Library | Africana Library |
      | engrref | Engineering Library |
      | entomologylib | Entomology Library |
      | fineartsref | Fine Arts Library |
      | ilrref | Industrial & Labor Relations Library |
      | asiaref | Kroch Library (Asia) |
      | rareref | Kroch Library (Division of Rare and Manuscript Collections) |
      | library_law | Law Library |
      | mgtref | Management Library |
      | mann_ref | Mann Library (Agriculture, Life Sciences and Selected Social Sciences) |
      | mathlib | Mathematics Library |
      | musicref | Music Library |
      | Okuref | Olin Library (Humanities & Social Sciences) |
      | pslref | Physical Sciences Library |
      | hotellibrary | School of Hotel Administration Library |
      | okUref | Uris Library (Humanities & Social Sciences) |
      | vetref | Veterinary Library |
      | infodesk_med | Weill Cornell Medical Library (New York City |
      | askalibrarian_qatar_med | Weill Cornell Medical College-Qatar, Distributed eLibrary |


  @email_request_class_instruction
  # https://www.library.cornell.edu/services/instruction/request
  Scenario Outline: Request Class Instruction form email test
    Given I visit page "services/instruction/request"
        And I do not see complaints about javascript
        And I enter "Library Webform Email Test" for field "edit-submitted-instructor-information-instructors-department2"
        And I enter "James Reidy" for field "edit-submitted-instructor-information-instructors-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-instructor-information-instructors-email-address"
        And I enter "607-255-0380" for field "edit-submitted-instructor-information-instructors-phone-number"
        And I select "<library>" from popup "edit-submitted-scheduling-information-library"
        And I enter test email question into "edit-submitted-course-information-other-information" with sequence "20" and tag "<elist>"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a thank you message

    Examples:
      | elist | library |
      | Adelson_lib@cornell.edu | Adelson Library at Lab of Ornithology |
      | Africana_Library@cornell.edu | Africana Library |
      | engrref@cornell.edu | Engineering Library |
      | entomologylib@cornell.edu | Entomology Library |
      | fineartsref@cornell.edu | Fine Arts Library |
      | hotelref@cornell.edu | Hotel Library |
      | ilrref@cornell.edu | Industrial and Labor Relations Library |
      | asiaref@cornell.edu | Kroch Library (Asia) |
      | ljh5@cornell.edu | Kroch Library (Division of Rare and Manuscript Collections)  |
      | library@law.mail.cornell.edu | Law Library |
      | mgtref@cornell.edu | Management Library |
      | mann_ref@cornell.edu | Mann Library (Agriculture, Life Sciences and Selected Social Sciences) |
      | mathlib@cornell.edu | Mathematics Library |
      | musicref@cornell.edu | Music Library |
      | rls-instruct-l@cornell.edu | Olin Library (Humanities and Social Sciences) |
      | pslref@cornell.edu | Physical Sciences Library |
      | rls-instruct-l@cornell.edu | Uris Library (Humanities and Social Sciences) |
      | vetref@cornell.edu | Veterinary Library |
      | infodesk@med.cornell.edu | Weill Cornell Medical Library (New York City |
      | askalibrarian@qatar-med.cornell.edu | Weill Cornell Medical College-Qatar, Distributed eLibrary |

  @email_still_unable_to_connect
  # https://www.library.cornell.edu/still-not-able-connect
  Scenario Outline: Still Not Able to Connect? form email test
    Given PENDING : Still Not Able to Connect still needs email updates
    Given I visit page "still-not-able-connect"
        And I do not see complaints about javascript
        And I select "other" from popup "edit-submitted-os"
        And I select "AOL" from popup "edit-submitted-your-internet-connection"
        And I select "Chrome" from popup "edit-submitted-what-kind-of-web-browser-are-you-using"
        And I enter "Webform Email Test" for field "edit-submitted-which-resource-are-you-having-problems-with"
        And I enter "Testing webform email." for field "edit-submitted-what-was-the-error-message-you-received"
        And I enter test email question into "edit-submitted-other-info" with sequence "21" and tag "<elist>"
        And I enter "James Reidy" for field "edit-submitted-your-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-your-e-mail-address"
        And I select "<library>" from popup "edit-submitted-library"
        And I submit by hitting button "Send to selected library"
    Then I should not see a problem with submission message
        And I should see a thank you message

    Examples:
      | elist | library |
      | cul-web-test@cornell.edu | Test |

  @email_citation_management_help
  # https://www.library.cornell.edu/research/citation/help
  Scenario Outline: Citation Management Help form email test
    Given I visit page "research/citation/help"
        And I do not see complaints about javascript
        And I enter "James G. Reidy" for field "edit-submitted-full-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-email-address"
        And I select "<library>" from popup "edit-submitted-select-a-library"
        And I enter test email question into "edit-submitted-enter-your-comments-or-questions-in-the-box" with sequence "22" and tag "<elist>"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a thank you message
 
    Examples:
      | elist | library |
      | Adelson_lib@cornell.edu | Adelson Library (Lab of Ornithology) |
      | Africana_Library@cornell.edu | Africana Library |
      | engrref@cornell.edu | Engineering Library |
      | entomologylib@cornell.edu | Entomology Library |
      | fineartsref@cornell.edu | Fine Arts Library |
      | lib@nysaes.cornell.edu | Geneva Library |
      | hotelref@cornell.edu | Hotel Library |
      | ilrref@cornell.edu | Industrial & Labor Relations Library |
      | asiaref@cornell.edu | Kroch Library (Asia) |
      | rareref@cornell.edu | Kroch Library (Division of Rare and Manuscript Collections) |
      | library@law.mail.cornell.edu | Law Library |
      | mgtref@cornell.edu | Management Library |
      | mann-ref@cornell.edu | Mann Library (Agriculture, Life Sciences & Selected Social Sciences) |
      | mathlib@cornell.edu | Mathematics Library |
      | musicref@cornell.edu | Music Library |
      | okuref@cornell.edu | Olin Library (Humanities & Social Sciences) |
      | pslref@cornell.edu | Physical Sciences Library |
      | okuref@cornell.edu | Uris Library (Humanities & Social Sciences) |
      | vetref@cornell.edu | Veterinary Library |
      | infodesk@med.cornell.edu | Weill Cornell Medical Library (New York City) |
      | askalibrarian@qatar-med.cornell.edu | Weill Cornell Medical College-Qatar, Distributed eLibrary |

