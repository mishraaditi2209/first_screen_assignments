class CruisePage < HomePage

  element :alaska_picture_logo, {css: "img[src='/images/alaskan_cruise.gif']"}
  element :cruise_itinerary, {css:"span.style6"}
  element :accept_reservation, {css: 'img[alt="Reservations Open"]'}

  def initialize(page_driver)
    @driver = page_driver
  end


end