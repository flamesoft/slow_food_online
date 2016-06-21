Feature: As a visitor
  So that I can use the service
  I would like to be able to sign up and log in with my email

  Scenario: A visitor can register
      Given I am on the "sign up page"
      And I fill in "Username" with "test_user"
      And I fill in "Email" with "visitor@gmail.com"
      And I fill in "Password" with "12345678"
      And I fill in "Password confirmation" with "12345678"
      And I click on the "Sign up" button
      Then I should be on the "home page"
