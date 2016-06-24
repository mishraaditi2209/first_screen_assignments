Feature: Cruise Page
  As a user
  I wish to see
  Mercury Tour for cruise details


  Scenario:	Navigate to cruise page from homepage
    Given I am on mercury tour home page
    When I select Cruises from the left pane
    Then I should see alaska picture logo
    And I should see Cruise Itinerary

  Scenario:	Accepting reservation return to homepage
    Given I am on mercury tour home page
    And I login with existing credentials
    When I select Cruises from the left pane
    And I select accept reservation
    Then I should see Flight Finder page
