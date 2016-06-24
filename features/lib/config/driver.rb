

def launch_driver
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 60
  @driver.manage.window.maximize
  @driver.manage.delete_all_cookies
end

def driver
  @driver
end

def quit_driver
  @driver.quit
end
def wait_for_element element_hash
  wait = Selenium::WebDriver::Wait.new(:timeout => 0.5) # seconds
  begin
    wait.until { driver.find_element element_hash }
  rescue Selenium::WebDriver::Error::TimeOutError
    raise "Could not find element #{element_hash}"
  end
end

