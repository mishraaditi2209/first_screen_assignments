class FlightFinderPage < HomePage
  element :flight_finder_page_locator, {css: "img[src='/images/masts/mast_flightfinder.gif']"}
  element :passengers, {name: "passCount"}
  element :type, {name: 'tripType'}
  element :departing_from, {name: 'fromPort'}
  element :depart_month, {name: 'fromMonth'}
  element :depart_day, {name: 'fromDay'}
  element :arriving_from, {name: 'toPort'}
  element :returning_month, {name: 'toMonth'}
  element :returning_day, {name: 'toDay'}
  element :service_class, {name: 'servClass'}
  element :trip_type, {name: 'tripType'}
  element :find_flights, {name: 'findFlights'}
  element :out_flight, {name: 'outFlight'}
  element :in_flight, {name: 'inFlight'}
  element :reserve_flights, {name: 'reserveFlights'}
  element :airline, {name: 'airline'}
  element :airline, {name: 'airline'}
  element :airline, {name: 'airline'}
  element :first_name_0, {name: 'passFirst0'}
  element :first_name_1, {name: 'passFirst1'}
  element :last_name_0, {name: 'passLast0'}
  element :last_name_1, {name: 'passLast1'}
  element :cc_number, {name: 'creditnumber'}
  element :buy_flight, {name: 'buyFlights'}
  element :booked_itinerary_message, {xpath: "//font[2]"}

  def initialize(page_driver)
    @driver = page_driver
  end

  def is_current_page?
    flight_finder_page_locator.displayed?
  end

  def get_traveler_info(info)
    traveler_info = {
        trip_type: "Round Trip",
        passengers: "2",
        departing_from: "London",
        depart_month: "September",
        depart_day: "1",
        arriving_from: "Paris",
        returning_month: "September",
        returning_day: "5",
        service_class: "Economy class",
        airline: "Pangea Airlines",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        cc_number: Faker::Business.credit_card_number
    }
    traveler_info.update(info)
    traveler_info
  end

  def book_my_flight(traveler_info={})
    user_info = self.get_traveler_info(traveler_info)
    self.type.click
    self.select_from_dropdown_by_text(self.passengers, user_info[:passengers])
    self.select_from_dropdown_by_text(self.departing_from, user_info[:departing_from])
    self.select_from_dropdown_by_text(self.depart_month, user_info[:depart_month])
    self.select_from_dropdown_by_text(self.depart_day, user_info[:depart_day])
    self.select_from_dropdown_by_text(self.arriving_from, user_info[:arriving_from])
    self.select_from_dropdown_by_text(self.returning_month, user_info[:returning_month])
    self.select_from_dropdown_by_text(self.returning_day, user_info[:returning_day])
    self.service_class.click
    self.select_from_dropdown_by_text(self.airline, user_info[:airline])
    self.find_flights.click

    self.out_flight.click
    self.in_flight.click
    self.reserve_flights.click

    self.first_name_0.clear
    self.first_name_0.send_keys(user_info[:first_name])
    self.first_name_1.clear
    self.first_name_1.send_keys(user_info[:first_name])

    self.last_name_0.clear
    self.last_name_0.send_keys(user_info[:last_name])
    self.last_name_1.clear
    self.last_name_1.send_keys(user_info[:last_name])

    self.cc_number.clear
    self.cc_number.send_keys(user_info[:cc_number])
    self.buy_flight.click
    self.booked_itinerary_message.text
  end

end