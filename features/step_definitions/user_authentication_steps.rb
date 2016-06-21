Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

Given(/^I click on the "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I should be on the "([^"]*)"$/) do |page|
  pending # Write code here for checking on the home page
end
