@newone
Feature: Login Required Pages
Background:
  Given we are testing domain http://www.library.cornell.edu
Scenario:
  Given we go to page myacct
  When We click on the Login with your NetID or GuestID button
  Then we should see the CuWebLogin dialog
