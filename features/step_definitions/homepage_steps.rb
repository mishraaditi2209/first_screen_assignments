Given(/^I am on mercury tour home page$/) do
  homepage = HomePage.new(@driver)
  homepage.go_to
  homepage.is_current_page?.should == true
end

When(/^I look for content$/) do
  puts 'look for content'
end

Then(/^I should see Mercury Tour Page (logo)$/) do |element|
  homepage = HomePage.new(@driver)
  homepage.is_element_present?(element).should == true
end

And(/^I should see (left navigation pane) is present$/) do |element|
  homepage = HomePage.new(@driver)
  homepage.is_element_present?(element).should == true
end

And(/^I should see (One Cool Summer) image$/) do|element|
  homepage = HomePage.new(@driver)
  homepage.is_element_present?(element).should == true
end

And(/^I should see these options$/) do |table|
  # table is a table.hashes.keys # => [:Feature Destination]
  homepage = HomePage.new(@driver)
  table.hashes.each do |row|
      homepage.is_element_present?(row.keys[0]).should == true
  end
end

And(/^I should see on the top navigation pane$/) do |table|
  homepage = HomePage.new(@driver)
  table.hashes.each do |row|
    homepage.is_link_present?(row.keys[0]).should == true
  end
end

And(/^I should see (sign in) option$/) do |element|
  homepage = HomePage.new(@driver)
  homepage.is_element_present?(element).should == true
end

When(/^I select (.*) from the left pane$/) do |option|
  HomePage.new(@driver).select_link_element_by_text(option)
end

Then(/^I should observe the (.*)$/) do |message|
  UnderConstructionPages.new(@driver).get_under_construction_message.should == message
end

And(/^after selecting Back to home I should be on Homepage$/) do
  UnderConstructionPages.new(@driver).go_back_to_homepage
  HomePage.new(@driver).is_current_page?.should == true
end

Then(/^I should see (alaska picture logo)$/) do |element|
  CruisePage.new(@driver).is_element_present?(element).should == true
end

And(/^I should see (Cruise Itinerary)$/) do|element|
  CruisePage.new(@driver).get_element_text(element).should == element
end

And(/^I login with existing credentials$/) do
  HomePage.new(@driver).login_with_existing_credentials
end
