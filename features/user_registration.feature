Feature: User Registration
  As a new user
  I want to
  Register in Mercury Tour site

  Scenario: Register as new user
    Given I am on mercury tour home page
    And I navigate to user registration page
    And I register a new user
    Then I should I am registered successfully with message Thank you for registering. You may now sign-in using the user name and password you've just entered.
    And I sign on with newly create user
    And I should see Flight Finder page



