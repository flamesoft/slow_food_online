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

    Given the following dishes exist
      | name            | menu        |
      | Sallad          | starter     |
      | Dimsun          | starter     |
      | Grilled duck    | maincourse  |
      | Dumpling        | maincourse  |
      | Fried banana    | dessert     |
      | Sweet potato    | dessert     |

  
