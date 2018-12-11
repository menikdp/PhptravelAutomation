require 'selenium-webdriver'
require 'rubygems'
require 'rspec/expectations'

Before do
  @driver = Selenium::WebDriver.for:chrome
  @driver.manage.window.maximize
end

# After do
#   @driver.quit
# end