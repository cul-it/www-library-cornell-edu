require 'webdrivers'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds

Given /we are testing domain (.*)$/ do |domain|
  @url = {:domain => domain}
  driver.navigate.to "#{@url[:domain]}"
end

Given /we go to page (.*)$/ do |page|
  driver.navigate.to "#{@url[:domain]}/#{@page}"
end

When(/we click on the '(.*)' link$/) do |linktext|
  element = wait.until { driver.find_element(:partial_link_text => @linktext) }
  element.click
end

Then("we should see the CuWebLogin dialog") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then /^show me the page$/ do
  print driver.page_source
  puts 'hello from show'
end
