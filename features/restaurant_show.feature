Feature: As a visitor, when I have made my selection
  In order to be able to choose a restaurant to order my food from
  I would like a list with restaurants in my proximity to be displayed on the page.

  Background:
    Given the following categories exist
      | title   |
      | Samoan  |
      | Chinese |

    Given the following restaurants exist
      | name           | category |
      | Calles Kitchen | Samoan   |
      | Pizza Place    | Samoan   |
      | China Palace   | Chinese  |

    Given the following menus exist
      | name              | id   |
      | Starter           | 1    |
      | Main course       | 2    |
      | Dessert           | 3    |

    Given the following dishes exist
      | name            | price | menu_id |
      | Dimsun          | 80    | 1       |
      | Grilled duck    | 140   | 2       |
      | Fried banana    | 50    | 3       |

  @javascript
  Scenario: Choose Chinese
    Given I am on the "home page"
    And I select "Chinese" from "category"
    Then I should see link "China Palace"
    When I click the "China Palace" link
    Then I should be on the show page for "China Palace"

  Scenario: Show all menus
    Given I am on the show page for "China Palace"
    And I click "Menu"
    Then I should see "Starter"
    And I should see "Main course"
    And I should see "Dessert"
    #And I click "Starter"
    #Then I should see "Dimsun"
    #And I should not see "Grilled duck"
    #And I should not see "Fried banana"
