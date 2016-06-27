Feature: As a visitor
  In order to be able to make a choice of what I want to eat
  I would like to see a list of dishes within a specific menu offered by a restaurant

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

  Scenario: Show all the dishes and the prices
    Given I am on the "dish list page"
    Then I should see all the dishes
    And I should see all the prices

  Scenario: Show the dish details page
    Given I am on the "dish list page"
    And I click on "Dimsun"
    Then I should be on the "dish detail page" for "Dimsun"
    And I should see "Dimsun"
    And I should see "80"

#To do: move the dish list page to restaurant's show page
#This test will be changed later
  Scenario: Show all menus
    Given I am on the "dish list page"
    And I click "Menu"
    Then I should see "Starter"
    And I should see "Main course"
    And I should see "Dessert"
    #And I click "Starter"
    #Then I should see "Dimsun"
    #And I should not see "Grilled duck"
    #And I should not see "Fried banana"
