@newone
Feature: Login Required Pages
  Background:
    Given I am testing domain http://www.library.cornell.edu

  @all
  Scenario: My Account requires CUWebLogin
    Given I go to the home page
    Then I click on link having partial text "My Account"
    Then I should see page title having partial text as "My Account"
    Then I click on link having partial text "Login with your NetID or GuestID"
    Then I should see the CUWebLogin dialog

  @all
  Scenario: COAP Contact requires CUWebLogin
    Given I go to the home page
    Then I click on link having partial text "About Us"
    Then I should see page title having partial text as "About Us"
    Then I click on link having partial text "subject librarians"
    Then I click on link having partial text "Cornell Open Access Publication Fund"
    Then I click on link having partial text "COAP Contact"
    Then I click on link having partial text "this form"
    Then I should see the CUWebLogin dialog

  @all
  Scenario: COAP Application requires CUWebLogin
    Given I go to the home page
    Then I click on link having partial text "About Us"
    Then I should see page title having partial text as "About Us"
    Then I click on link having partial text "subject librarians"
    Then I click on link having partial text "Cornell Open Access Publication Fund"
    Then I click on link having partial text "COAP Application for Funding"
    Then I should see the CUWebLogin dialog

  @test
  Scenario: I want to test
    Given I go to the home page
    Then I go to page "myacct"
    Then I should see the headline "My Account"
