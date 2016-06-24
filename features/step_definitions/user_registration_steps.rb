And(/^I navigate to user registration page$/) do
  user_registration = UserRegistration.new(@driver).go_to
  user_registration.is_current_page?.should == true
end

And(/^I register a new user$/) do
  @user_info = UserRegistration.new(@driver).perform_user_registration
end

Then(/^I should I am registered successfully with message (.*)$/) do |expected_message|
  actual_message = UserRegistration.new(@driver).registration_success_message
  expect(actual_message).to include(expected_message)
end


And(/^I (sign on) with newly create user$/) do |element|
  UserRegistration.new(@driver).select_an_element(element)
  LoginPage.new(@driver).login_with_existing_credentials(@user_info[:user_name], @user_info[:password])
end