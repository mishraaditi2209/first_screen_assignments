require 'rspec'
require 'selenium-webdriver'
require 'cucumber'
require 'rake'
require 'simplecov'
require 'selenium_fury'
#require 'spec/spec_helper'
require 'shellwords'
require 'faker'

include RSpec::Matchers
require 'selenium_fury'
include SeleniumFury::SeleniumWebDriver::CreateSeleniumWebDriver


require File.dirname(__FILE__) + "/../lib/config/driver"
require File.dirname(__FILE__) + "/../lib/pages/homepage"
require File.dirname(__FILE__) + "/../lib/pages/under_construction_pages"
require File.dirname(__FILE__) + "/../lib/pages/cruise_page"
require File.dirname(__FILE__) + "/../lib/pages/login_page"
require File.dirname(__FILE__) + "/../lib/pages/flight_finder_page"

