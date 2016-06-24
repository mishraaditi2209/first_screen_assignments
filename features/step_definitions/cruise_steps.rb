And(/^I select (accept reservation)$/) do |element|
  CruisePage.new(@driver).select_an_element(element)
end

Then(/^I should see Flight Finder page$/) do ||
  FlightFinderPage.new(@driver).is_current_page?.should == true
end