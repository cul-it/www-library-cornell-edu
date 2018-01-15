@login_required
Feature: Login Required Pages
  Background:
    Given I am testing the correct domain

  @login_myaccount
  Scenario: My Account requires CUWebLogin
    Given I go to the home page
      And I click on the "My Account" link
      And I click on the "Login with your NetID or GuestID »" link
    Then I should see the CUWebLogin dialog

  @login_coap_contact
  Scenario: COAP Contact requires CUWebLogin
    Given I go to the home page
      And I visit page "about/collections/coap/contact/form"
    Then I should be asked to login

  @login_coap_application
  Scenario: COAP Application requires CUWebLogin
    Given I go to the home page
      And I click on the "About Us" link
      And I click on the "subject librarians" link
      And I click on the "Cornell Open Access Publication Fund" link
      And I click on the "COAP Application for Funding" link
    Then I should see the CUWebLogin dialog

  @login_elevator_art
  Scenario: Elevator art contest requires CUWebLogin
    Given I go to the home page
      And I go to page elevator-art
    Then I should see the CUWebLogin dialog

  @login_recommend_a_purchase
  Scenario: Elevator art contest requires CUWebLogin
    Given I go to the home page
      And I click on the "Services" link
      And I click on the "Borrow Direct, Interlibrary Loan (ILL) and Material Requests" link
      And I click on the "Recommend a Purchase" link
      Then wait for 10 seconds
      Then show me the page
    Then I should see the CUWebLogin dialog
 
