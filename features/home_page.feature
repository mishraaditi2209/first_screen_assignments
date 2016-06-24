Feature: Home Page
  As a user
  I wish to visit
  Mercury Tour to see the options

  Scenario: Verify Mercury Tour Home Page
    Given I am on mercury tour home page
    When I look for content
    Then I should see these options
    |Featured Destination |
    |left navigation pane |
    |logo                 |
    |One Cool Summer      |
    |Special              |
    |Tour tip             |
    |Register             |
    |Destination          |
    |Vacations            |
    |Links                |
    |sign in              |
    And I should see on the top navigation pane
    |SIGN-ON  |
    |REGISTER |
    |SUPPORT  |
    |CONTACT  |


  Scenario Outline: Verify navigation of left pane options
    Given I am on mercury tour home page
    When I select <option> from the left pane
    Then I should observe the <message>
    And after selecting Back to home I should be on Homepage
  Examples:
  | option      |  message                                                                                     |
  | Hotels      |  This section of our web site is currently under construction.   Sorry for any inconvienece. |
  | Car Rentals |  This section of our web site is currently under construction.   Sorry for any inconvienece. |
  | Destinations|  This section of our web site is currently under construction.   Sorry for any inconvienece. |
  | Vacations   |  This section of our web site is currently under construction.   Sorry for any inconvienece. |



