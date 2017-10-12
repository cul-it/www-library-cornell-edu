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
  visit "#{@url[:domain]}"
end

Then /^I go to page "(.*?)"$/ do |sitepage|
  target = "#{@url[:domain]}" + "/#{sitepage}"
  $driver.navigate.to "#{target}"
end

When(/I click on the "([^\']+)" link$/) do |linktext|
  first(:xpath,"//*[normalize-space()='#{linktext}']").click
end

Then("I should see the CUWebLogin dialog") do
  #find(:xpath, "id('identity')/h1[contains(text(),'CUWebLogin')]")
  #expect(page.all(:xpath, "id('identity')/h1")).to have_content('CUWebLogin')
  expect(page.title).to eq('Cornell University Web Login')
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
  page.find_by_id('search_box').send_keys string
end

Then("I select the first option from the ares popup") do
  wait.until {
    page.all(:css, 'div.dropdown li a')
  }
  within(:css, 'div.dropdown') {
    first(:css, 'li a').click
  }
end

Then("the first ares reserve title should be {string}") do |string|
  xp = 'id(\'course-reserves-all-inline\')/tbody/tr[2]/td[1]/p/strong'
  wait.until {
    page.all(:xpath, xp)
  }
  xp = 'id(\'course-reserves-all-inline\')'
  expect(page.find(:xpath, xp)).to have_content(string)
  # wait.until {
  #   expect(find(:css, 'table#course-reserves-all-inline td.ares-title p.title').first.text).to eq(string)
  # }
end

Then("the page title should start with {string}") do |string|
  expect(page.title).to start_with(string)
end

When("I wait for the ares spinner to stop") do
  expect(page.find('span#items-spinner-all-inline')).to have_content('Loading...')
  wait.until {
    expect(page).not_to have_selector('#items-spinner-all-inline', visible: true)
  }
end
