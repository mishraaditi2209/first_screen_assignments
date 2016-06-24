When(/^I look for flight with newly create user$/) do
  step("I navigate to user registration page")
  step("I register a new user")
  step("I sign on with newly create user")
  FlightFinderPage.new(@driver).is_current_page?.should == true
end

And(/^I book a flight with below details$/) do |table|
  # table is a table.hashes.keys # => [:option, :value]
  flight_info = Hash.new
  table.hashes.each do |row|
    flight_info.update({row['option'].downcase.gsub(' ', '_').to_sym => row['value']})
  end
  puts flight_info
  @flight_booking_itinerary = FlightFinderPage.new(@driver).book_my_flight(flight_info)
end

Then(/^I should see my flight booking itinerary is done with message (.*)$/) do|expected_message|
  expect(@flight_booking_itinerary).to include(expected_message)
end