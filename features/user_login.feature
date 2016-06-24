Feature: User login
  As a user
  I want to
  Login in Mercury Tour site

  Scenario: Sign in from login page
    Given I am on mercury tour home page
    When I navigate to sign in page
    And I login using login page with credentials kelley_mills and password Vo3sJ48kO
    Then I should logged in successfully
    And I should see Flight Finder page

  Scenario: Sign in with wrong credentials from login page
    Given I am on mercury tour home page
    When I navigate to sign in page
    And I login using login page with wrong credentials kelley_mills and password something
    Then I should stay on the login page

  Scenario: Sign off in from mercury tour
    Given I am on mercury tour home page
    When I navigate to sign in page
    And I login using login page with credentials kelley_mills and password Vo3sJ48kO
    And I should see Flight Finder page
    And I sign off from mercury tour
    Then I should stay on the login page