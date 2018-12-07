require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

# caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--disable-web-security" ]})
options = Selenium::WebDriver::Chrome::Options.new
options.add_argument('--disable-notifications')
options.add_argument('--disable-popup-blocking')
driver = Selenium::WebDriver.for :chrome, options: options

Given("open the website") do
    driver.navigate.to "https://phptravels.com/demo/"
    driver.manage.window.maximize
    # driver.find_element(:xpath, '//*[@id="PopupSignupForm_0"]/div[2]').displayed?
    # driver.find_element(:xpath, '//*[@id="PopupSignupForm_0"]/div[2]/div[1]').click
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

When("user choose home-page frontend") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user should on home-page frontend") do
  pending # Write code here that turns the phrase above into concrete actions
end
