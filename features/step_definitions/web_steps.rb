Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I'm on the registration_page$/) do
  visit '/registration_page'
end

When(/^I input nothing$/) do
  fill_in('Name', :with => nil)
end

Given(/^I am on the board_page$/) do
  visit('/board_page')
end

Then(/^I should see a selector$/) do
  expect(page).to have_selector('table tr')
end

