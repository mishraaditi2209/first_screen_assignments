Feature: Fight finder
  As a existing user
  I want to
  book the flight

  Background:
    Given I am on mercury tour home page

  Scenario: Book the flight successfully with newly create user
    When I look for flight with newly create user
    And I book a flight with below details
      |option           | value           |
      |Trip Type        | Round Trip      |
      |Passengers       | 2               |
      |Departing From   | London          |
      |Depart Month     | September       |
      |Depart Day       | 1               |
      |Arriving From    | Paris           |
      |Returning Month  | September       |
      |Returning Day    | 5               |
      |Service Class    | Economy class   |
      |Airline          | Pangea Airlines |
      |First Name       | Tester First    |
      |Last Name        | Test Last       |
      |Number           | 0561467074      |
    Then I should see my flight booking itinerary is done with message Your itinerary has been booked!


  Scenario: Book the flight successfully with existing create user
    When I navigate to sign in page
    And I login using login page with credentials kelley_mills and password Vo3sJ48kO
    And I should see Flight Finder page
    And I book a flight with below details
      |option           | value           |
      |Trip Type        | Round Trip      |
      |Passengers       | 2               |
      |Departing From   | London          |
      |Depart Month     | September       |
      |Depart Day       | 1               |
      |Arriving From    | Paris           |
      |Returning Month  | September       |
      |Returning Day    | 5               |
      |Service Class    | Economy class   |
      |Airline          | Pangea Airlines |
      |First Name       | Tester First    |
      |Last Name        | Test Last       |
      |Number           | 0561467074      |
    Then I should see my flight booking itinerary is done with message Your itinerary has been booked!