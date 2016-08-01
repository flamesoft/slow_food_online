Feature: As a customer
  So that I can complete my purchase
  I would like to be able to enter payment details and delivery adress

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

  Scenario: Display all the fields in checkout form
    Given I am logged-in as "Calle"
    And I have added items to the cart
    And I am on the "checkout page"
    Then I should see all the fields

  Scenario: Input shorter than 2 digits is not valid cvc
    Given I am logged-in as "Calle"
    And I have added items to the cart
    And I am on the "checkout page"
    And I fill in "CVC" with "34"
    Then I should see "CVC is not valid"
