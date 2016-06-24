  class HomePage < PageObject

    element :logo, {css: 'img[alt="Mercury Tours"]'}
    element :left_navigation_pane, {css: 'div table tbody tr td table tbody tr td table tbody tr td table tbody'}
    element :one_cool_summer, {css: 'td > img'}
    element :destinations,{css:"img[alt='Desinations']"}
    element :featured_destination,{css:"img[alt='Featured Destination: Aruba']"}
    element :specials,{css:"img[alt='Specials']"}
    element :tour_tips,{css:"img[alt='Tour Tips']"}
    element :links,{css:"img[alt='Links']"}
    element :vacations, {css:"img[alt='Vacations']"}
    element :register, {css:"img[alt='Register']"}
    element :sign_in, {css:"input[alt='Sign-In']"}
    element :cruise, {xpath: "//a[text()='Cruises']"}
    element :username_input, {xpath: "//input[@name='userName']"}
    element :password_input, {xpath: "//input[@name='password']"}

    def initialize(page_driver)
      @driver = page_driver
    end

    def go_to(url='http://newtours.demoaut.com/')
      driver.navigate.to(url)
      self
    end

    def is_current_page?
      driver.title.include? "Welcome: Mercury Tours"
    end

    def is_element_present?(element)
      send(element.downcase.gsub(' ','_')).displayed?
    end

    def select_an_element(element)
      send(element.downcase.gsub(' ','_')).click()
    end

    def get_title_of_page
      driver.title
    end

    def get_element_text(element)
      send(element.downcase.gsub(' ','_')).text
    end

    def get_link_element(link_text)
      @driver.find_element(link_text: link_text)
    end

    def is_link_present?(link_text)
      self.get_link_element(link_text).displayed?
    end

    def select_link_element_by_text(link_text)
      self.get_link_element(link_text).click
    end

    def login_with_existing_credentials(username='kelley_mills', password='Vo3sJ48kO')
      self.username_input.clear
      self.username_input.send_keys(username)
      self.password_input.send_keys(password)
      self.sign_in.click
    end

    def select_from_dropdown_by_text(element, text)
      Selenium::WebDriver::Support::Select.new(element).select_by(:text, text)
    end

  end
