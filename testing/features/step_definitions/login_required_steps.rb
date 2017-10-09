require 'webdrivers'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

Given /we are testing domain (.*)$/ do |domain|
  @url = {:domain => domain}
end

Given /we go to page (.*)$/ do |page|
  driver.navigate.to "#{@url[:domain]}/#{@page}"
end

When(/We click on the (.*) button$/) do |buttontext|
  driver.find_element(:link_text, @buttontext).click
end

Then("we should see the CuWebLogin dialog") do
  pending # Write code here that turns the phrase above into concrete actions
end
