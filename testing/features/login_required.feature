@newone
Feature: Login Required Pages
Background:
  Given we are testing domain http://www.library.cornell.edu
Scenario:
  Given we go to page myacct
  Then show me the page
  When we click on the 'Login with your NetID or GuestID' link
  Then we should see the CuWebLogin dialog
