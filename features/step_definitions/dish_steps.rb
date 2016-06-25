Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |dish|
    FactoryGirl.create(:dish, name: dish[:name], price: dish[:price])
  end
end

Then(/^I should see all the dishes$/) do
  steps %Q{
    Then I should see "Dimsun"
    Then I should see "Grilled duck"
    Then I should see "Fried banana"
  }
end

Then(/^I should see all the prices$/) do
  steps %Q{
    Then I should see "80"
    Then I should see "140"
    Then I should see "50"
  }
end

Then(/^I should be on the "([^"]*)" for "([^"]*)"$/) do |page, dish_name|
  dish = Dish.find_by(name: dish_name)
  expect(current_path).to eq dish_path(dish)
end
