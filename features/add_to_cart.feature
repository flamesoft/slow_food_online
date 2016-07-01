Feature: As a visitor
  In order to purchase dishes
  I want to be able to put dishes into a cart

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

    Scenario: Add Dimsun to cart
      Given I am logged-in as "Calle"
      And I am on the "dish list page" for menu "Breakfast"
      And I click "Add to cart" for "Dimsun"
      Then I should see "Successfully added to cart"

    Scenario: Add multile dishes to cart
      Given I am logged-in as "Calle"
      And I am on the "dish list page" for menu "Breakfast"
      And I click "Add to cart" for "Dimsun"
      And I click "Add to cart" for "Soy milk"
      And I click "Add to cart" for "Congee"
      Then I should see "Successfully added to cart"

    Scenario: Add dishes only to active order
      Given I am logged-in as "Calle"
      And I am on the "dish list page" for menu "Breakfast"
      And I click "Add to cart" for "Congee"
      And I click "Add to cart" for "Soy milk"
      Then I should see "Successfully added to cart"
      And my current order is different from delivered order for "Calle"
