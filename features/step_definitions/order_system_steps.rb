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
