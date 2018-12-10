require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for :chrome

Given("open the website") do
    driver.navigate.to "https://phptravels.com/demo/"
    driver.manage.window.maximize
    
    #popup handling
    if driver.find_elements(:id,'onesignal-popover-cancel-button').size > 0
      driver.find_element(:id, 'onesignal-popover-cancel-button').click
    end

    if driver.find_elements(:class, 'modalContent').size > 0
      driver.find_element(:class, 'mc-closeModal').click
    end
end

Then("user closing the browser") do
  driver.quit
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

When("user choose homepage frontend") do
  driver.find_element(:xpath, '/html/body/section[2]/div/div/div[1]/div/div/div[2]/div[2]/div/div[1]/div/a').click
end

Then("user should on homepage frontend") do
  puts "Title " if wait.until{ /www.phptravels.net/.match(driver.current_url)}
end

When("user click on My Account") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("user choose login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user should on login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user fill email") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user fill password") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user click on login button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("user should logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

