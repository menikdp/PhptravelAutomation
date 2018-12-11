require_relative '../support/env'

Given("open the website") do
  @driver.navigate.to "https://phptravels.com/demo/"
  
  #popup handling
  if @driver.find_elements(:id,'onesignal-popover-cancel-button').size > 0
    @driver.find_element(:id, 'onesignal-popover-cancel-button').click
  end

  if @driver.find_elements(:class, 'modalContent').size > 0
    @driver.find_element(:class, 'mc-closeModal').click
  end
end

Then("user click on main menu") do
  @driver.find_element(:link, 'DEMO').click
  @driver.find_element(:link, 'PRICING').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[3]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[4]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[5]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[6]/span/span').click
  @driver.find_element(:xpath,'//*[@id="main-menu"]/ul/li[7]/span/span').click
  @driver.find_element(:link,'LOGIN').click
  sleep(2)
end  

