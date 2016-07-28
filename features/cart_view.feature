Feature: As a user
  In order to see an overview of my orders
  I would like to get a order-summary on the cart page

  Background:
    Given the following users are registered in the system
      | username    | email             |
      | Calle       | calle@gmail.com   |

    Given the following categories exist
      | title   |
      | Chinese |

    Given the following restaurants exist
      | name           | category |
      | China Palace   | Chinese  |

    Given the following menus exist
      | name              | id   |  restaurant_name |
      | Breakfast         | 1    |  China Palace    |

    Given the following dishes exist
      | name            | price | menu_id |
      | Dimsun          | 80    | 1       |
      | Soy milk        | 40    | 1       |
      | Congee          | 75    | 1       |

    Given the following orders exist
      | user_name      | status   |
      | Calle          | false    |

    Scenario: Show a cart view page
      Given I am logged-in as "Calle"
      And I am on the "home page"
      And I click "Cart"
      Then I am on the "cart page"

    Scenario: Display item on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      Then I should see the items

    Scenario: Display item price on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      Then I should see the items price

    Scenario: Display subtotal on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      Then I should see "Subtotal: 195.00 kr"

    Scenario: Display total tax on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      Then I should see "Taxes: 16.09 kr"

    Scenario: Display total price on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      Then I should see "Total price: 211.09 kr"

    Scenario: Remove one specific item on cart page
      Given I am logged-in as "Calle"
      And I have added items to the cart
      And I click "Cart"
      And I click on "Remove Dimsun"
      Then I should not see "Dimsun"
