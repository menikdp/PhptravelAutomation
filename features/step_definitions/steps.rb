require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
# require_relative 'main_menu'

caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--disable-web-security" ]})

driver = Selenium::WebDriver.for:chrome
Given("open the website") do
    driver.navigate.to "https://phptravels.com/demo/"
    driver.manage.window.maximize
end

Then("user click on main menu") do
  driver.find_element(:link, 'DEMO').click
  driver.find_element(:link, 'PRICING').click
  driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[3]/span/span').click
  driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[4]/span/span').click
  driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[5]/span/span').click
  driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[6]/span/span').click
  driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[7]/span/span').click
  driver.find_element(:link,'LOGIN').click
  sleep(2)
end  

Then("user closing the browser") do
    driver.quit
end
