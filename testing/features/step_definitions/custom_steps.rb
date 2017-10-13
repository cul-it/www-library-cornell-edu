require 'selenium-cucumber'
require 'capybara/cucumber'

# Do Not Remove This File
# Add your custom steps here
#

require 'webdrivers'
require 'selenium-webdriver'

def wait_for(seconds)
  # see http://elementalselenium.com/tips/47-waiting
  # sets maximum time to wait, not wait first, then do it
  Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
end

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
  visit "#{target}"
end

When(/I click on the "([^\']+)" link$/) do |linktext|
  first(:xpath,"//a[normalize-space()='#{linktext}']").click
end

Then("I should see the CUWebLogin dialog") do
  wait_for(5) {
    find(:css, '.input-submit')
  }
  expect(page.title).to eq('Cornell University Web Login')
end

Then /^show me the page$/ do
  print page.html
  puts "current url:"
  puts URI.parse(current_url)
end

Then /^the page should show content "(.*?)"$/ do |expectedText|
  expect(page).to have_content(expectedText)
end

Then /^I search ares for "(.*?)"$/ do |searchstring|
  fill_in 'search_box', with: searchstring
  page.find('#edit-submit').click
end

Then /^I visit page "(.*?)"$/ do |sitepage|
  target = "#{@url[:domain]}" + "/#{sitepage}"
  visit target
end

Then("I enter {string} in the ares search") do |string|
  page.find_by_id('search_box').send_keys string
end

Then("I select the first option from the ares popup") do
  wait_for(5) {
    page.find('.dropdown-menu > li:nth-child(1) > a:nth-child(1)')
  }
  page.find('.dropdown-menu > li:nth-child(1) > a:nth-child(1)').click
end

Then("the ares results should contain {string}") do |string|
  wait_for(150) {
    expect(page.find(:xpath, 'id(\'course-reserves-all-inline\')')).to have_content(string)
  }
end

Then("the page title should start with {string}") do |string|
  expect(page.title).to start_with(string)
end

When("I wait for the ares spinner to stop") do
  # see https://groups.google.com/d/msg/ruby-capybara/Mz7txv1Sm0U/xBypglg-1roJ
  wait_for(150) {
    expect(page).not_to have_selector('#items-spinner-all-inline', visible: true)
  }
end

When("I search the catalog for {string}") do |string|
  page.fill_in 'q', with: string
end

Then("the catalog search should suggest {string}") do |string|
  wait_for(5) {
    expect(page.find(:id, 'ui-id-2').text).to have_content(string)
  }
end

Then("I should see the hours listing for {string}") do |string|
  wait_for(5) {
    within(page.find(:xpath,"//a/h2[text()='#{string}']").find(:xpath, '../..')) {
      expect(find(".today-hours").text).not_to be_empty
    }
  }
end

