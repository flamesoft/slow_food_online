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

    Scenario: Add Dimsun to cart
      Given I am logged-in as "Calle"
      And I am on the "dish list page" for menu "Breakfast"
      And I click "Add to cart" for "Dimsun"
      Then show me the page
      And I should see "You have made 1 order"
