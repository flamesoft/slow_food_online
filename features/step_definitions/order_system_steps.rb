Given(/^I click "([^"]*)" for "([^"]*)"$/) do |link, dish|
  current_dish = Dish.find_by(name: dish)
  within("##{current_dish.id}") do
    click_link_or_button(link)
  end
end
