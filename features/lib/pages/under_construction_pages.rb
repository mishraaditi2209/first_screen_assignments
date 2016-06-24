class UnderConstructionPages < HomePage

    element :under_construction_message, {css: "font b"}
    element :back_to_home, {css: "a[href='mercurywelcome.php'] > img"}

    def initialize(page_driver)
      @driver = page_driver
    end

    def get_under_construction_message
      self.under_construction_message.text
    end

    def go_back_to_homepage
      back_to_home.click
    end

end