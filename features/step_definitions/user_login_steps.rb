When(/^I navigate to sign in page$/) do
  login_page = LoginPage.new(@driver).go_to
  login_page.is_current_page?.should == true
end

Then(/^I should logged in successfully$/) do
  FlightFinderPage.new(@driver).is_current_page?.should == true
end

And(/^I login using login page with credentials (.*) and password (.*)$/) do |username, password|
  LoginPage.new(@driver).login_with_existing_credentials(username, password)
end

And(/^I login using login page with wrong credentials (.*) and password (.*)$/) do|username, password|
  LoginPage.new(@driver).login_with_existing_credentials(username, password)
end

Then(/^I should stay on the login page$/) do
  LoginPage.new(@driver).is_current_page?.should == true
end

And(/^I (sign off) from mercury tour$/) do |element|
  LoginPage.new(@driver).select_an_element(element)
end