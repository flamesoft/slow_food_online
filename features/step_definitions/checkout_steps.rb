Then(/^I should see all the fields$/) do
  steps %q{
    Then I should see the field "Full Name"
    Then I should see the field "Phone Number"
    Then I should see the field "Street"
    Then I should see the field "City"
    Then I should see the field "Zip Code"
    Then I should see the field "Cardholder"
    Then I should see the field "Card Number"
    Then I should see the field "Expiration Date"
    Then I should see the field "CVC"
  }
end

Given(/^I have added items to the cart$/) do
  steps %q{
    And I am on the "dish list page" for menu "Breakfast"
    And I click "Add to cart" for "Dimsun"
    And I click "Add to cart" for "Soy milk"
    And I click "Add to cart" for "Congee"
  }
end
