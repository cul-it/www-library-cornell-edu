@email
Feature: Some webforms should send emails after submit
  Background:
    Given I am testing the correct domain

  @email_ask_a_librarian
  # https://www.library.cornell.edu/ask/email
  Scenario Outline: Ask a Librarian form email test
    Given PENDING : so we won't be spamming the email lists by mistake
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
    Given PENDING : so we won't be spamming the email lists by mistake
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
      | fineartsref@cornell.edu | Fine Arts Library |
      | hotellibrary@cornell.edu | Hotel Library |
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
    Given PENDING : so we won't be spamming the email lists by mistake
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
      | Adelson_lib@cornell.edu | Adelson Library (Lab of Ornithology |
      | Africana_Library@cornell.edu | Africana Library |
      | engrref@cornell.edu | Engineering Library |
      | fineartsref@cornell.edu | Fine Arts Library |
      | lib@nysaes.cornell.edu | Geneva Library |
      | hotellibrary@cornell.edu | Hotel Library |
      | ilrref@cornell.edu | Industrial & Labor Relations Library |
      | asiaref@cornell.edu | Kroch Library (Asia) |
      | rareref@cornell.edu | Kroch Library (Division of Rare and Manuscript Collections) |
      | library@law.mail.cornell.edu | Law Library |
      | mgtref@cornell.edu | Management Library |
      | mann-ref@cornell.edu | Mann Library (Agriculture, Life Sciences and Selected Social Sciences) |
      | mathlib@cornell.edu | Mathematics Library |
      | musicref@cornell.edu | Music Library |
      | okuref@cornell.edu | Olin Library (Humanities & Social Sciences) |
      | pslref@cornell.edu | Physical Sciences Library |
      | okuref@cornell.edu | Uris Library (Humanities & Social Sciences) |
      | vetref@cornell.edu | Veterinary Library |
      | infodesk@med.cornell.edu | Weill Cornell Medical Library (New York City |
      | askalibrarian@qatar-med.cornell.edu | Weill Cornell Medical College-Qatar, Distributed eLibrary |

  @email_citation_management_help
  # https://www.library.cornell.edu/research/citation/help
  Scenario Outline: Citation Management Help form email test
    Given PENDING : so we won't be spamming the email lists by mistake
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
      | fineartsref@cornell.edu | Fine Arts Library |
      | lib@nysaes.cornell.edu | Geneva Library |
      | hotellibrary@cornell.edu | Hotel Library |
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

  @email_research_consultation
  # https://www.library.cornell.edu/research/consultation
  Scenario Outline: Research Consultation form email test
    Given PENDING : so we won't be spamming the email lists by mistake
    Given I visit page "research/consultation"
        And I do not see complaints about javascript
        And I enter "James G. Reidy" for field "edit-submitted-your-name"
        And I enter "cul-web-test-confirm@cornell.edu" for field "edit-submitted-your-e-mail-address"
        And I select "Cornell Staff" from popup "edit-submitted-status"
        And I select "<library>" from popup "edit-submitted-library"
        And I select "other" from popup "edit-submitted-type-of-research"
        And I enter "tomorrow" for field "edit-submitted-when-is-the-deadline"   
        And I enter test email question into "edit-submitted-your-research-assignment-or-project" with sequence "23" and tag "<elist>"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a thank you message
 
    Examples:
      | elist | library |
      | Adelson_lib@cornell.edu | Adelson Library (Lab of Ornithology |
      | Africana_Library@cornell.edu | Africana Library |
      | engrref@cornell.edu | Engineering Library |
      | fineartsref@cornell.edu | Fine Arts Library |
      | lib@nysaes.cornell.edu | Geneva Library |
      | hotellibrary@cornell.edu | Hotel Library |
      | ilrref@cornell.edu | Industrial & Labor Relations Library |
      | asiaref@cornell.edu | Kroch Library (Asia) |
      | rareref@cornell.edu | Kroch Library (Division of Rare and Manuscript Collections) |
      | mgtref@cornell.edu | Management Library |
      | mann-ref@cornell.edu | Mann Library (Agriculture, Life Sciences and Selected Social Sciences) |
      | mathlib@cornell.edu | Mathematics Library |
      | musicref@cornell.edu | Music Library |
      | okuref@cornell.edu | Olin Library (Humanities & Social Sciences) |
      | pslref@cornell.edu | Physical Sciences Library |
      | okuref@cornell.edu | Uris Library (Humanities & Social Sciences) |
      | vetref@cornell.edu | Veterinary Library |
      | infodesk@med.cornell.edu | Weill Cornell Medical Library (New York City |
      | askalibrarian@qatar-med.cornell.edu | Weill Cornell Medical College-Qatar, Distributed eLibrary |

  @email_from_and_to_addresses
  # https://www.library.cornell.edu/email-test-form-iterator-component-text-and
  Scenario Outline: Iterate over classes of From and To email addresses
    Given I visit page "email-test-form-iterator-component-text-and"
        And I do not see complaints about javascript
        And I enter "<From Email>" for field "edit-submitted-from-email"
        And I enter "<To Email>" for field "edit-submitted-to-email"
        And I enter "<Message>" for field "edit-submitted-message"
        And I hit Submit
    Then I should not see a problem with submission message
        And I should see a webform confirmation message
 
    Examples:
        | From Email | To Email | Message |
        | jgr25@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Cornell netID to Lyris List. Email Test Form Iterator - component text from and to |
        | jreidy@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Cornell custom to Lyris List. Email Test Form Iterator - component text from and to |
        | jreidy25@gmail.com | library-webform-test-l@cornell.edu | Testing email from Outside regular to Lyris List. Email Test Form Iterator - component text from and to |
        | fao@hzu.edu.cn | library-webform-test-l@cornell.edu | Testing email from Outside spammy to Lyris List. Email Test Form Iterator - component text from and to |
        | jgr25+main1@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Victoria Server Email to Lyris List. Email Test Form Iterator - component text from and to |
        | cul-drupal-admins@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Drupal Admins EGA to Lyris List. Email Test Form Iterator - component text from and to |
        | libsys-mailer@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Pantheon Site SMTP to Lyris List. Email Test Form Iterator - component text from and to |
        | culwebforms@cornell.edu | library-webform-test-l@cornell.edu | Testing email from Web Forms EGA to Lyris List. Email Test Form Iterator - component text from and to |
        | jgr25@cornell.edu | cul-web-test@cornell.edu | Testing email from Cornell netID to EGA. Email Test Form Iterator - component text from and to |
        | jreidy@cornell.edu | cul-web-test@cornell.edu | Testing email from Cornell custom to EGA. Email Test Form Iterator - component text from and to |
        | jreidy25@gmail.com | cul-web-test@cornell.edu | Testing email from Outside regular to EGA. Email Test Form Iterator - component text from and to |
        | fao@hzu.edu.cn | cul-web-test@cornell.edu | Testing email from Outside spammy to EGA. Email Test Form Iterator - component text from and to |
        | jgr25+main1@cornell.edu | cul-web-test@cornell.edu | Testing email from Victoria Server Email to EGA. Email Test Form Iterator - component text from and to |
        | cul-drupal-admins@cornell.edu | cul-web-test@cornell.edu | Testing email from Drupal Admins EGA to EGA. Email Test Form Iterator - component text from and to |
        | libsys-mailer@cornell.edu | cul-web-test@cornell.edu | Testing email from Pantheon Site SMTP to EGA. Email Test Form Iterator - component text from and to |
        | culwebforms@cornell.edu | cul-web-test@cornell.edu | Testing email from Web Forms EGA to EGA. Email Test Form Iterator - component text from and to |
        | jgr25@cornell.edu | jgr25@cornell.edu | Testing email from Cornell netID to Individual. Email Test Form Iterator - component text from and to |
        | jreidy@cornell.edu | jgr25@cornell.edu | Testing email from Cornell custom to Individual. Email Test Form Iterator - component text from and to |
        | jreidy25@gmail.com | jgr25@cornell.edu | Testing email from Outside regular to Individual. Email Test Form Iterator - component text from and to |
        | fao@hzu.edu.cn | jgr25@cornell.edu | Testing email from Outside spammy to Individual. Email Test Form Iterator - component text from and to |
        | jgr25+main1@cornell.edu | jgr25@cornell.edu | Testing email from Victoria Server Email to Individual. Email Test Form Iterator - component text from and to |
        | cul-drupal-admins@cornell.edu | jgr25@cornell.edu | Testing email from Drupal Admins EGA to Individual. Email Test Form Iterator - component text from and to |
        | libsys-mailer@cornell.edu | jgr25@cornell.edu | Testing email from Pantheon Site SMTP to Individual. Email Test Form Iterator - component text from and to |
        | culwebforms@cornell.edu | jgr25@cornell.edu | Testing email from Web Forms EGA to Individual. Email Test Form Iterator - component text from and to |