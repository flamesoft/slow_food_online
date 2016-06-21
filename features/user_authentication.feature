Feature: As a visitor
  So that I can use the service
  I would like to be able to sign up and log in with my email

  Scenario: A visitor can register
    Given I am on the "sign up page"
    And I fill in "Username" with "test_user"
    And I fill in "Email" with "visitor@gmail.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I click "Sign up"
    Then I should be on the "home page"

  Scenario: A visitor cannot register with wrong password confirmation
    Given I am on the "sign up page"
    And I fill in "Username" with "test_user2"
    And I fill in "Email" with "visitor2@gmail.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "qqqqqqq"
    And I click "Sign up"
    Then I should see "Password confirmation doesn't match Password"
