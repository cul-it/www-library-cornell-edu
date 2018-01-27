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

def check_image(type, type_path)
  # https://stackoverflow.com/questions/10109680/how-to-test-if-an-img-tag-points-to-an-existing-image
  # you can't actually check response codes in Capybara, though it works for :poltergeist
  # Capybara::NotSupportedByDriverError for :chrome :selenium_chrome_headless
  img = find(type, type_path)
  if Capybara.current_driver == :poltergeist
    visit img[:src]
    #expect(page).not_to have_content('Not Found')
    expect(page.status_code).to be(200)
  else
    puts 'check_image unsupported on this driver'
  end
end

def what_is(element)
  puts "\n********************* what is V\n"
  puts element.inspect
  puts element['innerHTML']
  puts "\n********************* what is ^\n"
end

def sleep_for(sec)
  sleep sec.to_i
end

Given("I am testing the correct domain") do
  edomain = ENV['DOMAIN']
  case "#{edomain}"
  when "production"
    @url = {:domain => 'https://www.library.cornell.edu'}
  when "test_v02"
    @url = {:domain => 'https://main1.test.library.cornell.edu'}
  when "dev"
    @url = {:domain => 'https://dev-wwwlibrarycornelledu.pantheonsite.io'} 
  when "test"
    @url = {:domain => 'https://test-wwwlibrarycornelledu.pantheonsite.io'} 
  when "live"
    @url = {:domain => 'https://live-wwwlibrarycornelledu.pantheonsite.io'} 
  else
    @url = {:domain => 'https://wwwtest.library.cornell.edu'}
  end
  puts @url[:domain]
end

Given("I go to the home page") do
  visit "#{@url[:domain]}"
end

When(/I click on the "([^\']+)" link$/) do |linktext|
  wait_for(20) {
    first(:xpath,"//a[normalize-space()='#{linktext}']").click
  }
end

Then("I should see the CUWebLogin dialog") do
  wait_for(40) {
    find(:css, '.input-submit')
  }
  expect(page).to have_content('CUWebLogin')
  expect(page).to have_content("Cornell University's central authentication service")
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
  fill_in 'search_box', with: "#{searchstring}\n"
  #page.find('#edit-submit').click
end

Then /^I visit page "(.*?)"$/ do |sitepage|
  target = "#{@url[:domain]}" + "/#{sitepage}"
  visit target
end

Then("I enter {string} in the ares search") do |string|
  page.find_by_id('search_box').send_keys string
end

Then("the ares popup should contain {string}") do |string|
  wait_for(150) {
    # puts page.html
    # puts 'text above'
    expect(page.find('.dropdown').text).to have_content("#{string}")
  }
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

Then("there should be at least one ares result") do
  wait_for(250) {
    page.first('td.ares-title')
    page.first('td.ares-author')
    page.first('td.ares-location-complete')
    page.first('td.ares-status')
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

Then("I should see the hours listing for {string} with {string}") do |string, string2|
  wait_for(5) {
    within(page.find(:xpath,"//a/h2[text()='#{string}']").find(:xpath, '../../..')) {
      if string2 == true
        expect(find(".today-hours").text).not_to be_empty
      end
      check_image(:css, '.library-thumbnail img')
    }
  }
end

Then("I should see the table of {string} hours") do |string|
  within(page.find(:css, "table.s-lc-whw")) {
    expect(find(:css, "td.s-lc-whw-locname")).to have_content(string)
  }
end

Then /^wait for (.*) seconds$/ do |sec|
  sleep_for(sec)
end

Then("I should be asked to login") do
  expect(page.find(:css, "div.alert").text).to have_content("You must login")
  expect(page.find(:css, "section#block-login-tools-login-tools").text).to have_content("Cornell login required")
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end

Given /^PENDING/ do
  pending
end

When("I do not see complaints about javascript") do
  expect(page).not_to have_css('div.antibot-no-js')
  expect(page).not_to have_content('Javascript')
  expect(page).not_to have_content('enable')
end

When("I do not see No current course reserve items were found.") do
  expect(page).not_to have_content('No current course reserve items were found.')
end

Given("I enter {string} for field {string}") do |string, string2|
  fill_in(string2, :with => string)
end

Given("I select {string} from popup {string}") do |string, string2|
  page.select string, from: string2
end

Given("I enter test email question with sequence {string} and tag {string}") do |string, string2|
  fill_in("edit-submitted-your-question", :with => "This is a test email from a web form on www.library.cornell.edu. If you see this email, please reply 'Got it' (or some such thing), so we'll know it's working. After that, please delete it so no one else is bothered. Thanks. -JGReidy [webform-email-test;#{string};#{string2}]")
end

Then("I hit Submit") do
  # https://www.drupal.org/project/webform/issues/2906236
  # Honeypot complains if it took less than 5 sconds to fill out the form
  sleep_for(6)
  click_button("Submit")
end

Then ("I should not see a problem with submission message") do
  # Honeypot complaint
  wait_for(15) {
    expect(page).not_to have_content("problem with your form submission")
  }
end

Then ("I should see a thank you message") do
  wait_for(15) {
    expect(page.find(:css, "div.alert-success")).to have_content("Thank you")
  }
end