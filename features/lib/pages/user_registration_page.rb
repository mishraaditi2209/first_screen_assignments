
class UserRegistration < LoginPage

  element :page_locator, {css: "img[src='/images/masts/mast_register.gif']"}
  element :registration_form, {xpath: "//a[@href='mercuryregister.php']"}
  element :first_name, {xpath: "//input[@name='firstName']"}
  element :last_name, {xpath: "//input[@name='lastName']"}
  element :phone, {xpath: "//input[@name='phone']"}
  element :email, {xpath: "//input[@name='userName']"}
  element :address, {xpath: "//input[@name='address1']"}
  element :city, {xpath: "//input[@name='city']"}
  element :state_province, {xpath: "//input[@name='state']"}
  element :country, {xpath: "//select[@name='country']"}
  element :postal_code, {xpath: "//input[@name='postalCode']"}
  element :user_name, {xpath: "//input[@name='email']"}
  element :password, {xpath: "//input[@name='password']"}
  element :confirm_password, {xpath: "//input[@name='confirmPassword']"}
  element :register_user_submit, {xpath: "//input[@name='register']"}
  element_list :success_message, {css: "p font"}
  element :sign_on, {xpath: "//a[@href='mercurysignon.php']"}
  USER_INFO = {}

  def initialize(page_driver)
    @driver = page_driver
  end

  def go_to
    self.sign_in_link.click
    self.registration_form.click
    self
  end

  def get_user_info(info={})
    user_info = {
        first_name:  Faker::Name.first_name,
        last_name:  Faker::Name.last_name,
        phone: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        address: Faker::Address.street_address,
        city: Faker::Address.city,
        state_province: Faker::Address.state,
        country: "UNITED ARAB EMIRATES",
        postal_code: Faker::Address.zip_code,
        user_name: Faker::Internet.user_name,
        password: Faker::Internet.password
    }
    user_info.update(info)
    user_info
  end

  def is_current_page?
    self.page_locator.displayed?
  end

  def fill_registration_form(user_info={})
    user_info = self.get_user_info(user_info)
    self.first_name.clear
    self.first_name.send_keys(user_info[:first_name])
    self.last_name.clear
    self.last_name.send_keys(user_info[:last_name])
    self.phone.clear
    self.phone.send_keys(user_info[:phone])
    self.email.clear
    self.email.send_keys(user_info[:email])
    self.address.clear
    self.address.send_keys(user_info[:address])
    self.city.clear
    self.city.send_keys(user_info[:city])
    self.state_province.clear
    self.state_province.send_keys(user_info[:state_province])
    self.select_from_dropdown_by_text(self.country, user_info[:country])
    self.postal_code.clear
    self.postal_code.send_keys(user_info[:postal_code])
    self.user_name.clear
    self.user_name.send_keys(user_info[:user_name])
    self.password.send_keys(user_info[:password])
    self.confirm_password.send_keys(user_info[:password])
  end

  def perform_user_registration(user_info={})
    user_info = self.get_user_info(user_info)
    self.fill_registration_form(user_info)
    self.register_user_submit.click
    print user_info
    user_info
  end

  def registration_success_message
    message = []
    self.success_message.each do |text_message|
      message.push(text_message.text)
    end
    message.join(" ")
  end

end