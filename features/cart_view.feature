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
      And I am on the "dish list page" for menu "Breakfast"
      And I click "Add to cart" for "Congee"
      And I click "Cart"
      Then I am on the "cart page"
