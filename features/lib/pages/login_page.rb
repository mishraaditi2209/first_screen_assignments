
class LoginPage < HomePage

  element :sign_in_link, {xpath: "//a[text()='SIGN-ON']"}
  element :page_locator, {css: "img[src='/images/masts/mast_signon.gif']"}
  element :sign_in_submit, {xpath: "//input[@value='Login']"}
  element :sign_off, {xpath: "//a[text()='SIGN-OFF']"}
  def initialize(page_driver)
    @driver = page_driver
  end

  def go_to
    self.sign_in_link.click
    self
  end

  def is_current_page?
    self.page_locator.displayed?
  end

  def login_with_existing_credentials(username='kelley_mills', password='kelley_mills')
    self.username_input.clear
    self.username_input.send_keys(username)
    self.password_input.send_keys(password)
    self.sign_in_submit.click
  end
end