Given(/^I am on the "([^"]*)"$/) do |page|
  case page
    when "sign up page" then
      visit new_user_registration_path
  end
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

Given(/^I click on the "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end

Then(/^I should be on the "([^"]*)"$/) do |page|
  pending # Write code here for checking on the home page
end
