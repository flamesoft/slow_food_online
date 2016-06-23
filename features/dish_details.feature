Feature: As a visitor
  In order to be able to make a choice of what I want to eat
  I would like to see details of a dish

  Scenario:
    Given I am on the "dish detail page"
    Then I should see "Dimsun"
    And I should see "90"
    And I should see "120"
    And I should see "soy"
