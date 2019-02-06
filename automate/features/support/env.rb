# encoding: utf-8
#Encoding.default_external = "iso-8859-1"
Encoding.default_internal = Encoding::UTF_8
Encoding.default_external = Encoding::UTF_8
require 'rspec/expectations'
require 'capybara/cucumber'
require "selenium-webdriver"
require 'capybara'
require 'json'

# tearup
Before do

  ENV["BROWSER"] ||= 'chrome' 
  ENV["PLATFORM"] ||= 'MAC' 

  create_driver(:selenium, ENV["BROWSER"].to_sym)
end


#teardown
After do |scenario|
  if (ENV["BROWSER"] != 'safari')
    Capybara.reset_sessions!
  end
  Capybara.use_default_driver
  if (ENV["SELENIUM"] != 'remote')
    Capybara.current_session.driver.quit
  end
end

def create_driver(driver_type, browser_name)
  Capybara.default_max_wait_time = 10
  register_driver(driver_type, browser_name)
  Capybara.default_driver = driver_type
  Capybara.current_driver = driver_type
end

def register_driver(driver_type, browser_name)
  Capybara.register_driver driver_type do |app|
    Capybara::Selenium::Driver.new(app, :browser => browser_name)
  end
end
