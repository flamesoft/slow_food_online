Given(/^I click "([^"]*)" for "([^"]*)"$/) do |link, dish|
  current_dish = Dish.find_by(name: dish)
  within("##{current_dish.id}") do
    click_link_or_button(link)
  end
end

Given(/^the following orders exist$/) do |table|
  table.hashes.each do |order|
    user = User.find_by(username: order[:user_name])
    FactoryGirl.create(:order, user_id: user.id, status: order[:status])
  end
end

Then(/^my current order is different from delivered order for "([^"]*)"$/) do |user_name|
  user = User.find_by(username: user_name)
  current_order = Order.find_by(user_id: user.id)
  old_orders = Order.where(user_id: user.id).where(status: false)
  old_orders.each do |old_order|
    expect(current_order != old_order)
  end
end

Given(/^I have added items to the cart$/) do
  steps %q{
    And I am on the "dish list page" for menu "Breakfast"
    And I click "Add to cart" for "Dimsun"
    And I click "Add to cart" for "Soy milk"
    And I click "Add to cart" for "Congee"
  }
end

Then(/^I should see the items$/) do
  steps %q{
    Then I should see "Dimsun"
    And I should see "Soy milk"
    And I should see "Congee"
  }
end
