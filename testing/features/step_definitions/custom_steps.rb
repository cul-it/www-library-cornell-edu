require 'selenium-cucumber'
require 'capybara/cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code.
#

require 'webdrivers'
require 'selenium-webdriver'
#driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 15) # seconds

Given("I am testing the correct domain") do
  edomain = ENV['DOMAIN']
  case "#{edomain}"
  when "production"
    @url = {:domain => 'https://www.library.cornell.edu'}
  else
    @url = {:domain => 'https://wwwtest.library.cornell.edu'}
  end
end

Given("I go to the home page") do
  $driver.navigate.to "#{@url[:domain]}"
end

Then /^I go to page "(.*?)"$/ do |sitepage|
  target = "#{@url[:domain]}" + "/#{sitepage}"
  $driver.navigate.to "#{target}"
end

When(/I click on the '([^\']+)' link$/) do |linktext|
  $driver.find_element(:link_text => @linktext).click
end

Then("I should see the CUWebLogin dialog") do
  $driver.find_element(:xpath => "id('identity')/h1[contains(text(),'CUWebLogin')]")
end

Then /^show me the page$/ do
  print $driver.page_source
  puts "current url:"
  puts $driver.current_url
end

Then /I should see the headline "(.*?)"$/ do |headline|
  xpath = "//*[self::h1 or self::h2 or self::h3][text()=\"#{headline}\"]"
  $driver.find_element(:xpath => "#{xpath}")
end

Then /I should see the text "(.*?)"$/ do |nugget|
  $driver.find_element(:xpath => "//*[text()=\"#{nugget}\"]")
end

Then (/I should see the link text "(.*?)"$/) do |string|
  $driver.find_element(:link_text => "#{string}")
end

## capybara versions
#
Then /^the page should show content "(.*?)"$/ do |expectedText|
  expect(page).to have_content(expectedText)
end

Then /^I search ares for "(.*?)"$/ do |searchstring|
  fill_in 'search_box', with: searchstring
end

Then /^I visit page "(.*?)"$/ do |sitepage|
  target = "#{@url[:domain]}" + "/#{sitepage}"
  visit target
end

Then("I enter {string} in the ares search") do |string|
  $driver.find_element(:id, 'search_box').send_keys string
end

Then("I select the first option from the ares popup") do
  path = 'div.dropdown li a'
  wait.until {
    $driver.find_element(:css, path)
  }
  $driver.find_element(:css, path).click
end


Then("the first ares reserve title should be {string}") do |string|
  wait.until {
    expect($driver.find_element(:css, 'table#course-reserves-all-inline td.ares-title p.title').text).to match(string)
  }
end
